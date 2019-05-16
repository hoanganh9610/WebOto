using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DatHang : System.Web.UI.Page
{
        CSDL x = new CSDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckDN();
        if (!IsPostBack)
        {

            if (Request.QueryString["hc"] != null)
            {
                int Masp = int.Parse(Request.QueryString["hc"]);
                DataTable dt = x.GetData("SELECT TenSP,Gia,MauNgoaiThat,PhienBan,HinhSP FROM SANPHAM where IDSanPham=" + Masp);
                string Tensp = dt.Rows[0][0].ToString();
                string Giasp = dt.Rows[0][1].ToString();
                string Maungoaithat = dt.Rows[0][2].ToString();
                string Phienban = dt.Rows[0][3].ToString();
                string Hinhsp = dt.Rows[0][4].ToString();
                ThemVaoGioHang(Tensp, Giasp,Maungoaithat,Phienban, Hinhsp);
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.String TongTien = "";
                foreach (DataRow r in dt.Rows)
                {
                    r["ThanhTien"] = r["Gia"];
                    TongTien =  Convert.ToString(r["ThanhTien"]);
                    lbtongtien.Text = TongTien.ToString();
                }
                gvGioHang.DataSource = dt;
                gvGioHang.DataBind();
            }
            if (Session["GioHang"] == null)
            {
                Response.Write("<script> alert('Giỏ hàng rỗng !')</script>");
            }
        }
    }



    public void ThemVaoGioHang(string Tensp, string Giasp,string Maungoaithat,string Phienban, string Hinhsp)
    {
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("TenSP", typeof(string));
            dt.Columns.Add("Gia", typeof(string));
            dt.Columns.Add("MauNgoaiThat", typeof(string));
            dt.Columns.Add("PhienBan", typeof(string));
            dt.Columns.Add("HinhSP", typeof(string));
            dt.Columns.Add("ThanhTien",typeof(string));
        }
        else
            dt = (DataTable)Session["GioHang"];


            DataRow dr = dt.NewRow();
            //dr["MaSanPham"] = Masp;
            dr["TenSP"] = Tensp;
            dr["Gia"] = Giasp;
            dr["MauNgoaiThat"] = Maungoaithat;
            dr["PhienBan"] = Phienban;
            dr["HinhSP"] = Hinhsp;
            dr["ThanhTien"] = Giasp ;
            dt.Rows.Add(dr);
        Session["GioHang"] = dt;
    }
    public static int SPDaCoTrongGioHang(string Tensp, DataTable dt)
    {
        try
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if ((dt.Rows[i]["TenSP"].ToString()) == Tensp)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }
        catch (Exception)
        {
            return -1;
        }
    }
    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            try
            {
                DataTable dt = (DataTable)Session["Giohang"];
                dt.Rows.RemoveAt(chiso);
                Session["Giohang"] = dt;
                Response.Redirect("~/DonHang.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("~/DonHang.aspx");
            }
        }
    }
    protected void gvGioHang_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvGioHang_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvGioHang.PageIndex = e.NewPageIndex;
        gvGioHang.DataBind();
    }
    //protected void btTiepTucMua_Click(object sender, EventArgs e)
    //{

    //}
    //    Session["Giohang"] = dt;
    //    Response.Redirect("~/GioHang.aspx");
    //}

    private void CheckDN()
    {
        //try
        //{
        //string TenDN = Session["Tendangnhap"].ToString();
        if (Session["Tendangnhap"] == null)
        {
            btndathang.Visible = false;
            lbthongbao.Visible = true;
        }
        else
        {
            btndathang.Visible = true;
            lbthongbao.Visible = false;
        }
    }
    protected void btDatHang_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DonHang.aspx");
    }

}