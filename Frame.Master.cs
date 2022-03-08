using System;

namespace Student_Management
{
    public partial class Frame : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string ShowLoginFeaturesHTML()
        {
            if (Convert.ToBoolean(Session["login"]))
            {
                return @"
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdown' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                        Phân công
                    </a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdown'>
                        <li><a class='dropdown-item' href='/Assignments/add.aspx'>Thêm phân công</a></li>
                        <li><a class='dropdown-item' href='/Assignments/list.aspx'>Danh sách phân công</a></li>
                    </ul>
                </li>";
            }
            return "";
        }

        public string ShowLoginHTML()
        {
            if (Convert.ToBoolean(Session["login"]))
            {
                return @"
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdown' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                        <img src='/img/user.png' alt='' width='30' height='24' class='d-inline-block align-text-top'>
                        " + Session["username"] + @"
                    </a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdown'>
                        <li><a class='dropdown-item' href='/Logout.aspx'>Đăng xuất</a></li>
                    </ul>
                </li>";
            }
            else
            {
                return @"
                <li class='nav-item'>
                    <a class='nav-link' href='/SignUp.aspx'>
                        <i class='fas fa-sign-in-alt'></i>
                        Đăng ký
                    </a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='/Login.aspx'>
                        <i class='fas fa-user-circle'></i>
                        Đăng nhập
                    </a>
                </li>";
            }
        }
    }
}