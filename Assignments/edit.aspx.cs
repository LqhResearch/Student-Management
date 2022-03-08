using System;
using System.Data;

namespace Student_Management.Assignments
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = @"SELECT tblGiaoVien.MaGV, tblMonHoc.MaMH, HoGV+' '+TenGV as Fullname, TenMH, GhiChu 
                            FROM tblGiaoVien, tblPhanCong, tblMonHoc 
                            WHERE tblGiaoVien.MaGV = tblPhanCong.MaGV 
                            AND tblPhanCong.MaMH = tblMonHoc.MaMH
                            AND tblPhanCong.MaGV = '" + Request.QueryString["MaGV"] + @"'
                            AND tblPhanCong.MaMH = '" + Request.QueryString["MaMH"] + @"'";
                DataRow row = ConnectDB.GetTable(sql).Rows[0];
                txtTeacher.Text = row["Fullname"].ToString();
                txtSubject.Text = row["MaMH"].ToString();
                txtNote.Text = row["GhiChu"].ToString();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string sql = "UPDATE tblPhanCong SET GhiChu=N'" + txtNote.Text + "' WHERE MaGV='" + Request.QueryString["MaGV"] + "' AND MaMH='" + Request.QueryString["MaMH"] + "'";
            ConnectDB.Execute(sql);
            Response.Redirect("list.aspx");
        }
    }
}