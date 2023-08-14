using Graduation_Student_Party.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Student_Party.Register_Page
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateddlGender();
                populateddlVisitor();
            }

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



        protected void btnInsert_Click(object sender, EventArgs e)
        {

            CRUD mycrud = new CRUD();
            string mysql = @"insert StudentRegisteration (Fname,Mname,Lname,genderId,StudentNum,Email,visitorId)
		                    values(@Fname,@Mname,@Lname,@genderId,@StudentNum,@Email,@visitorId)";
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
    }
}