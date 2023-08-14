using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Graduation_Student_Party
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            mailMgr myMail = new mailMgr();
            myMail.myFrom = txtFrom.Text;
            myMail.myTo = txtTo.Text;
            myMail.mySubject = txtSubject.Text;
            myMail.myBody = txtBody.Text;
            myMail.sendEmailViaGmail();
            lblOutput.Text = myMail.sendEmailViaGmail();
        }
    }
}