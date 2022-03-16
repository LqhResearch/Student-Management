using System;
using System.Data;

namespace Student_Management.Users
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "SELECT * FROM tblUser WHERE Username = N'" + Request.QueryString["Username"] + "'";
                DataRow row = ConnectDB.GetTable(sql).Rows[0];
                txtUsername.Text = row["Username"].ToString();
                ddlRole.SelectedValue = row["Role"].ToString();
                ddlStatus.SelectedValue = row["Status"].ToString();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string sql = "UPDATE tblUser SET Role = '" + ddlRole.SelectedValue + "', Status = '" + ddlStatus.SelectedValue + "' WHERE Username = N'" + Request.QueryString["Username"] + "'";
            ConnectDB.Execute(sql);
            Response.Redirect("/Users/list.aspx");
        }
    }
}