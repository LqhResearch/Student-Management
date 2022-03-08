using System;

namespace Student_Management.Teachers
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptList.DataSource = ConnectDB.GetTable("SELECT * FROM tblGiaoVien");
                rptList.DataBind();
            }
        }
    }
}