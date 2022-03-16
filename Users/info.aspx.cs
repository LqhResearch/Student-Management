using System;

namespace Student_Management.Users
{
    public partial class info : System.Web.UI.Page
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
            string sql = "SELECT * FROM tblUser WHERE Username='" + Session["username"] + "' AND Password='" + EncodeSHA1(txtPassword.Text) + "'";
            if (ConnectDB.GetTable(sql).Rows.Count == 1)
            {
                if (txtNewPassword.Text == txtReNewPassword.Text)
                {
                    sql = "UPDATE tblUser SET Password = '" + EncodeSHA1(txtNewPassword.Text) + "' WHERE Username='" + Session["username"] + "'";
                    if (ConnectDB.Execute(sql) == 1)
                        lblMessage.Text = @"<div class='alert alert-success' role='alert'>Thay đổi mật khẩu thành công</div>";
                }
                else lblMessage.Text = @"<div class='alert alert-info' role='alert'>Mật khẩu không khớp</div>";
            }
            else lblMessage.Text = @"<div class='alert alert-danger' role='alert'>Mật khẩu cũ không hợp lệ</div>";
        }
    }
}