using Graduation_Student_Party.App_Code;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Student_Party.Project_Pages
{
    public partial class Export_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                populateGvStudentRegistered();
              
            }

            if (Roles.IsUserInRole(User.Identity.Name, "admin"))
            {
                btnExport.Visible = true;
            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        protected void populateGvStudentRegistered()
        {
            CRUD myCrud = new CRUD();
            string mySql = @"SELECT   Fname, Mname, Lname ,gender , studentNum , email , visitor             
                FROM      StudentRegisteration s INNER JOIN
                Gender g ON s.genderId = g.genderId INNER JOIN visitor v ON s.visitorId = v.visitorId";
            SqlDataReader dr = myCrud.getDrPassSql(mySql);
            gvstudentRegistered.DataSource = dr;
            gvstudentRegistered.DataBind();
        }

        public void ExportGridToExcel(GridView grd)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grd.AllowPaging = false;
            populateGvStudentRegistered();
            grd.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportGridToExcel(gvstudentRegistered);
        }
    }
}