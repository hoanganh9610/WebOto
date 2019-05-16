using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TrangSanPham : System.Web.UI.Page
{
    CSDL x = new CSDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["hc"] != null)
            {
                int Masp = int.Parse(Request.QueryString["hc"]);
                DataTable dl = x.GetData("SELECT IDSanPham,TenSP,HinhSP,HinhSP2,HinhSP3,HinhSP4,HinhSP5,MoTa,Gia,PhienBan,XuatXu,KieuGiang,TinhTrang,NamSanXuat,NoiBan,Odo,HopSo,MauNgoaiThat,MauNoiThat,SoCua,SoGhe,DungTichXiLanh,DanDong,NhienLieu FROM SANPHAM where IDSanPham=" + Masp);
                Masp = int.Parse(dl.Rows[0][0].ToString());
                string Tensp = dl.Rows[0][1].ToString();
                string Hinhsp1 = dl.Rows[0][2].ToString();
                string Hinhsp2 = dl.Rows[0][3].ToString();
                string Hinhsp3 = dl.Rows[0][4].ToString();
                string Hinhsp4 = dl.Rows[0][5].ToString();
                string Hinhsp5 = dl.Rows[0][6].ToString();
                string Mota = dl.Rows[0][7].ToString();
                string Giasp = dl.Rows[0][8].ToString();
                string Phienban = dl.Rows[0][9].ToString();
                string Xuatxu = dl.Rows[0][10].ToString();
                string Kieugiang = dl.Rows[0][11].ToString();
                string Tinhtrang = dl.Rows[0][12].ToString();
                int Namsanxuat = Convert.ToInt32(dl.Rows[0][13].ToString());
                string Noiban = dl.Rows[0][14].ToString();
                int Odo = Convert.ToInt32(dl.Rows[0][15].ToString());
                string Hopso = dl.Rows[0][16].ToString();
                string Maungoaithat = dl.Rows[0][17].ToString();
                string Maunoithat = dl.Rows[0][18].ToString();
                int Socua = Convert.ToInt32(dl.Rows[0][19].ToString());
                int Soghe = Convert.ToInt32(dl.Rows[0][20].ToString());
                int Dungtichxilanh = Convert.ToInt32(dl.Rows[0][21].ToString());
                string Dandong = dl.Rows[0][22].ToString();
                string Nhienlieu = dl.Rows[0][23].ToString();
                ThemVaodl(Masp, Tensp, Hinhsp1, Hinhsp2, Hinhsp3, Hinhsp4, Hinhsp5, Mota, Giasp, Phienban, Xuatxu, Kieugiang, Tinhtrang, Namsanxuat, Noiban, Odo, Hopso, Maungoaithat, Maunoithat, Socua, Soghe, Dungtichxilanh, Dandong, Nhienlieu);
                dlSanPham.DataSource = dl;
                dlSanPham.DataBind();
            }
        }
    }
    public void ThemVaodl(int Masp, string Tensp, string Hinhsp1, string Hinhsp2, string Hinhsp3, string Hinhsp4, string Hinhsp5, string Mota, string Giasp, string Phienban, string Xuatxu, string Kieugiang, string Tinhtrang, int Namsanxuat, string Noiban, int Odo, string Hopso, string Maungoaithat, string Maunoithat, int Socua, int Soghe, int Dungtichxilanh, string Dandong, string Nhienlieu)
    {
        DataTable dl = new DataTable();
        dl.Columns.Add("TenSP", typeof(string));
        dl.Columns.Add("HinhSP", typeof(string));
        dl.Columns.Add("HinhSP2", typeof(string));
        dl.Columns.Add("HinhSP3", typeof(string));
        dl.Columns.Add("HinhSP4", typeof(string));
        dl.Columns.Add("HinhSP5", typeof(string));
        dl.Columns.Add("MoTa", typeof(string));
        dl.Columns.Add("Gia", typeof(string));
        dl.Columns.Add("PhienBan", typeof(string));
        dl.Columns.Add("XuatXu", typeof(string));
        dl.Columns.Add("KieuGiang", typeof(string));
        dl.Columns.Add("TinhTrang", typeof(string));
        dl.Columns.Add("NamSanXuat", typeof(int));
        dl.Columns.Add("NoiBan", typeof(string));
        dl.Columns.Add("Odo", typeof(int));
        dl.Columns.Add("HopSo", typeof(string));
        dl.Columns.Add("MauNgoaiThat", typeof(string));
        dl.Columns.Add("MauNoiThat", typeof(string));
        dl.Columns.Add("SoCua", typeof(int));
        dl.Columns.Add("SoGhe", typeof(int));
        dl.Columns.Add("DungTichXiLanh", typeof(int));
        dl.Columns.Add("DanDong", typeof(string));
        dl.Columns.Add("NhienLieu", typeof(string));
        DataRow dr = dl.NewRow();
        dr["TenSP"] = Tensp;
        dr["HinhSP"] = Hinhsp1;
        dr["HinhSP2"] = Hinhsp2;
        dr["HinhSP3"] = Hinhsp3;
        dr["HinhSP4"] = Hinhsp4;
        dr["HinhSP5"] = Hinhsp5;
        dr["MoTa"] = Mota;
        dr["Gia"] = Giasp;
        dr["PhienBan"] = Phienban;
        dr["XuatXu"] = Xuatxu;
        dr["KieuGiang"] = Kieugiang;
        dr["TinhTrang"] = Tinhtrang;
        dr["NamSanXuat"] = Namsanxuat;
        dr["NoiBan"] = Noiban;
        dr["Odo"] = Odo;
        dr["HopSo"] = Hopso;
        dr["MauNgoaiThat"] = Maungoaithat;
        dr["MauNoiThat"] = Maunoithat;
        dr["SoCua"] = Socua;
        dr["SoGhe"] = Soghe;
        dr["DungTichXiLanh"] = Dungtichxilanh;
        dr["DanDong"] = Dandong;
        dr["NhienLieu"] = Nhienlieu;
        dl.Rows.Add(dr);
    }
}