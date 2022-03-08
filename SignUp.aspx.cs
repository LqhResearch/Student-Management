using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        private string EncodeSHA1(string str)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str.Trim(), "SHA1");
        }

        [Obsolete]
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string sql = @"INSERT INTO tblUser VALUES ('" + txtUsername.Text + "', '" + EncodeSHA1(txtPassword.Text) + "', '" + txtEmail.Text + "')";
            ConnectDB.Execute(sql);
        }
    }
}