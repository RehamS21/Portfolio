using Graduation_Student_Party.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Student_Party.Project_Pages
{
    public partial class Student_CRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateddlGender();
                populateddlVisitor();
            }

        }
        protected void populateGvStudentGraduate()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT   Fname, Mname, Lname ,gender , studentNum , email , visitor             
                FROM      StudentRegisteration s INNER JOIN
                Gender g ON s.genderId = g.genderId INNER JOIN visitor v ON s.visitorId = v.visitorId
                    ";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            GvStudentGradute.DataSource = dr;
            GvStudentGradute.DataBind();
        }


        protected void populateddlGender()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select genderId, gender from Gender";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlgender.DataTextField = "gender";
            ddlgender.DataValueField = "genderId";
            ddlgender.DataSource = dr;
            ddlgender.DataBind();
        }

        protected void populateddlVisitor()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"select visitorId, visitor from visitor";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            ddlvisitornumber.DataTextField = "visitor";
            ddlvisitornumber.DataValueField = "visitorId";
            ddlvisitornumber.DataSource = dr;
            ddlvisitornumber.DataBind();
        }
    
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            CRUD mycrud = new CRUD();
            string mysql = @"update StudentRegisteration set Fname = @Fname ,Mname = @Mname,Lname = @Lname,
						genderId = @genderId,StudentNum = @StudentNum,Email = @Email,visitorId = @visitorId where StudentNum = @StudentNum";
            Dictionary<string, object> myPara = new Dictionary<string, object>();

            myPara.Add("@Fname", txtfname.Text);
            myPara.Add("@Mname", txtmname.Text);
            myPara.Add("@Lname", txtlname.Text);
            myPara.Add("@genderId", int.Parse(ddlgender.Text));
            myPara.Add("@StudentNum", txtstudentNumber.Text);
            myPara.Add("@Email", txtEmail.Text);
            myPara.Add("@visitorId", int.Parse(ddlvisitornumber.Text));
            int rtn = mycrud.InsertUpdateDelete(mysql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Success Operation";
            }
            else
            { lblOutput.Text = "Failed operation"; }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            populateGvStudentGraduate();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            CRUD myCrud = new CRUD();
            string mySql = @"delete StudentRegisteration where StudentNum = @StudentNum";
            Dictionary<string, object> myPara = new Dictionary<string, object>();
            myPara.Add("@StudentNum", txtstudentNumber.Text);
            int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Success Operation";
            }
            else
            { lblOutput.Text = "Failed operation"; }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            CRUD mycrud = new CRUD();
            string mysql = @"insert StudentRegisteration (Fname,Mname,Lname,genderId,StudentNum,Email,visitorId)
		                    values(@Fname,@Mname,@Lname,@genderId,@StudentNum,@Email,@visitorId)";
            Dictionary<string, object> myPara = new Dictionary<string, object>();

            myPara.Add("@Fname", txtfname.Text);
            myPara.Add("@Mname", txtmname.Text);
            myPara.Add("@Lname", txtlname.Text);
            myPara.Add("@genderId", int.Parse(ddlgender.SelectedItem.Value));
            myPara.Add("@StudentNum", txtstudentNumber.Text);
            myPara.Add("@Email", txtEmail.Text);
            myPara.Add("@visitorId", int.Parse(ddlvisitornumber.SelectedItem.Value));
            int rtn = mycrud.InsertUpdateDelete(mysql, myPara);
            if (rtn >= 1)
            {
                lblOutput.Text = "Success Operation";
            }
            else
            { lblOutput.Text = "Failed operation"; }
        }
    }
}