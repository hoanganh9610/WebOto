using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class DonHang : System.Web.UI.Page
{
    CSDL x = new CSDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Tendangnhap"] == null)
            Response.Redirect("~/DangNhap.aspx");
        if (Session["GioHang"] == null)
            Response.Redirect("~/DatHang.aspx");
        if(Session["TenDangNhap"] != null)
        {
            string s = "select Tendangnhap,Matkhau,Sodienthoai,Email,DiaChi from TAIKHOAN where Tendangnhap = '" + Session["Tendangnhap"].ToString() + "'";
            DataTable dtkh = x.GetData(s);
            if(dtkh.Rows.Count > 0)
            {
                //KhachHangID = int.Parse(dt.Rows[0][0].ToString());
                lbHoTen.Text = dtkh.Rows[0]["Tendangnhap"].ToString();
                lbDiaChi.Text = dtkh.Rows[0]["Diachi"].ToString();
                lbDienThoai.Text = dtkh.Rows[0]["Sodienthoai"].ToString();
                lbEmail.Text = dtkh.Rows[0]["Email"].ToString();
            }
        }
            if (Session["GioHang"] != null)
            {
                DataTable dtgh = new DataTable();
                dtgh = (DataTable)Session["GioHang"];
                gvGioHang.DataSource = dtgh;
                gvGioHang.DataBind();
            }
            if (Session["GioHang"] != null)
            {
                DataTable dtgh = new DataTable();
                dtgh = (DataTable)Session["GioHang"];
                System.String TongTien = "";
                foreach (DataRow r in dtgh.Rows)
                {
                    r["ThanhTien"] = r["Gia"];
                    TongTien = Convert.ToString(r["ThanhTien"]);
                    lbtongtien.Text = TongTien.ToString();
                }
                gvGioHang.DataSource = dtgh;
                gvGioHang.DataBind();
            }
        if(!IsPostBack)
        {
            cldNgayGiaoHang.SelectedDate = DateTime.Today;
        }
    }
    protected void gvGioHang_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvGioHang.PageIndex = e.NewPageIndex;
        gvGioHang.DataBind();
    }
    protected void btDongY_Click(object sender, EventArgs e)
    {
        //for(i = 1 ;i ++)
        //{
        //KhachHangID a = int.Parse("1") + 1;
        //}
        int sodonhang;
        string TenNguoiNhan, DiaChiNhan, DienThoaiNhan, GhiChu, tendangnhap,TongTien ;
        TenNguoiNhan = txtTenNguoiNhan.Text;
        DiaChiNhan = txtDiaChiNhan.Text;
        DienThoaiNhan = txtDienThoaiNhan.Text;
        GhiChu = txtnote.Text;
        tendangnhap = lbHoTen.Text;
         TongTien = lbtongtien.Text;
        //try
        //{
            SqlConnection con = new SqlConnection(x.strConn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            cmd.CommandText = @"insert into HOADON(NgayMua,ThanhTien,NgayGiao,TenNguoiNhan,Tendangnhap,DiachiNhan,DienThoaiNhan) values(@ngaydathang,@ThanhTien,@ngaygiaohang,@TenNguoiNhan,@Tendangnhap,@DiaChiNhan,@DienThoaiNhan); ; SELECT SCOPE_IDENTITY()";
            cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
            cmd.Parameters.Add("@ThanhTien", SqlDbType.NVarChar,50);
            cmd.Parameters["@ThanhTien"].Value = TongTien;
            cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaygiaohang"].Value = cldNgayGiaoHang.SelectedDate;
            cmd.Parameters.Add("@TenNguoiNhan", SqlDbType.NVarChar, 50);
            cmd.Parameters["@TenNguoiNhan"].Value = TenNguoiNhan;
            cmd.Parameters.Add("@Tendangnhap",SqlDbType.NVarChar, 50);
            cmd.Parameters["@Tendangnhap"].Value = tendangnhap;
            cmd.Parameters.Add("@DiaChiNhan", SqlDbType.NVarChar, 100);
            cmd.Parameters["@DiaChiNhan"].Value = DiaChiNhan;
            cmd.Parameters.Add("@DienThoaiNhan", SqlDbType.Text);
            cmd.Parameters["@DienThoaiNhan"].Value = DienThoaiNhan;
            //cmd.ExecuteNonQuery();
            sodonhang = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            DataTable dt = (DataTable)Session["GioHang"];
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();
            string Tensp,Hinhsp;
            string Giasp;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Tensp = dt.Rows[i]["TenSP"].ToString();
                Giasp = dt.Rows[i]["Gia"].ToString();
                Hinhsp = dt.Rows[i]["HinhSP"].ToString();
                x.Execute("INSERT INTO GIOHANG(IDHoaDon,TenSP,Gia,HinhSP) values(" + sodonhang + ",'" + Tensp + "'," + Giasp + ",'" + Hinhsp + "')");
            }
            Session["GioHang"] = null;
            //if (rbl_httt.SelectedValue == "0")
                Response.Redirect("~/Xacnhandathang.aspx");
            //else
            //{
            //    Response.Write("Vui lòng xác nhận !");
            //}
        //}
        //catch (Exception ex)
        //{
        //    lbloi.Text = "Lỗi trong quá trình!";
        //}
    }
    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["GioHang"];
                dt.Rows.RemoveAt(chiso);
                Session["GioHang"] = dt;
                Response.Redirect("~/GioHang.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("~/GioHang.aspx");
            }
        }
    }
}