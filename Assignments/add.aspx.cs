using System;

namespace Student_Management.Assignments
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTeacherID.DataSource = ConnectDB.GetTable("SELECT *, HoGV+' '+TenGV as Fullname FROM tblGiaoVien");
                ddlTeacherID.DataTextField = "Fullname";
                ddlTeacherID.DataValueField = "MaGV";
                ddlTeacherID.DataBind();

                ddlSubjectID.DataSource = ConnectDB.GetTable("SELECT * FROM tblMonHoc");
                ddlSubjectID.DataTextField = "TenMH";
                ddlSubjectID.DataValueField = "MaMH";
                ddlSubjectID.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string sql = @"INSERT INTO tblPhanCong VALUES ('" + ddlTeacherID.SelectedValue + "', '" + ddlSubjectID.SelectedValue + "', N'" + txtNote.Text + "')";
            ConnectDB.Execute(sql);
        }
    }
}