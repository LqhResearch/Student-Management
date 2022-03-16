using System;

namespace Student_Management.Users
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptList.DataSource = ConnectDB.GetTable("SELECT * FROM tblUser EXCEPT SELECT * FROM tblUser WHERE Username = N'" + Session["Username"] + "'");
                rptList.DataBind();
            }
        }
    }
}