using System;
using System.IO;
using System.Web.UI;

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
            if (txtPassword.Text == txtPassword2.Text)
            {
                string sql = "INSERT INTO tblUser VALUES (N'" + txtUsername.Text + "', N'" + EncodeSHA1(txtPassword.Text) + "', 1, 0, 'uploads/" + fAvatar.FileName + "')";
                ConnectDB.Execute(sql);
                lblMessage.Text = @"<div class='alert alert-info' role='alert'>Đăng ký thành công</div>";
            }
            else lblMessage.Text = @"<div class='alert alert-info' role='alert'>Mật khẩu không khớp</div>";
        }

        #region Xử lý tải ảnh lên
        private bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void btnAvatar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && fAvatar.HasFile && CheckFileType(fAvatar.FileName))
            {
                string fileName = "uploads/" + fAvatar.FileName;
                string filePath = MapPath(fileName);
                fAvatar.SaveAs(filePath);
                imgAvatar.ImageUrl = fileName;
            }
        }
        #endregion
    }
}