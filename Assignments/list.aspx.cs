using System;

namespace Student_Management.Assignments
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Convert.ToBoolean(Session["login"]))
                Response.Redirect("/Default.aspx");
            if (!IsPostBack)
            {
                // Xoá phân công
                string sql = "";
                if (Request.QueryString["del-MaGV"] != "" && Request.QueryString["del-MaMH"] != "")
                {
                    sql = @"DELETE FROM tblPhanCong WHERE MaGV='" + Request.QueryString["del-MaGV"] + "' AND MaMH='" + Request.QueryString["del-MaMH"] + "'";
                    ConnectDB.Execute(sql);
                }

                sql = @"SELECT tblGiaoVien.MaGV, tblMonHoc.MaMH, HoGV+' '+TenGV as Fullname, TenMH, GhiChu 
                        FROM tblGiaoVien, tblPhanCong, tblMonHoc 
                        WHERE tblGiaoVien.MaGV = tblPhanCong.MaGV 
                        AND tblPhanCong.MaMH = tblMonHoc.MaMH";
                rptList.DataSource = ConnectDB.GetTable(sql);
                rptList.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string sql = @"SELECT tblGiaoVien.MaGV, tblMonHoc.MaMH, HoGV+' '+TenGV as Fullname, TenMH, GhiChu 
                        FROM tblGiaoVien, tblPhanCong, tblMonHoc 
                        WHERE tblGiaoVien.MaGV = tblPhanCong.MaGV 
                        AND tblPhanCong.MaMH = tblMonHoc.MaMH
                        AND TenMH LIKE '%" + txtSearch.Text + "%'";
            rptList.DataSource = ConnectDB.GetTable(sql);
            rptList.DataBind();
        }
    }
}