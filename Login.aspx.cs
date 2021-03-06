using System;
using System.Data;

namespace Student_Management
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["login"]))
                Response.Redirect("/Default.aspx");
        }

        [Obsolete]
        private string EncodeSHA1(string str)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str.Trim(), "SHA1");
        }

        [Obsolete]
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql = @"SELECT * FROM tblUser WHERE Username='" + txtUsername.Text + "' AND Password='" + EncodeSHA1(txtPassword.Text) + "' AND Status = 1";
            DataTable dt = ConnectDB.GetTable(sql);
            if (dt.Rows.Count != 0)
            {
                Session.Add("login", true);
                Session.Add("username", dt.Rows[0]["Username"]);
                Session.Add("role", dt.Rows[0]["Role"]);
                Session.Add("avatar", dt.Rows[0]["Avatar"]);
                Response.Redirect("/Default.aspx");
            }
            else lblMessage.Text = "<div class='alert alert-danger' role='alert'>Tên đăng nhập hoặc mật khẩu không hợp lệ</div>";
        }
    }
}