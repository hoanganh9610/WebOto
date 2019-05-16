using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
public partial class DangNhap : System.Web.UI.Page
{
    CSDL x = new CSDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Tendangnhap"] = txttendangnhap.Text;
    }
    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        clDangKyTT dangky = new clDangKyTT();
        ketnoi.cmd = new System.Data.SqlClient.SqlCommand("login_form", ketnoi.getconn());
        ketnoi.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        ketnoi.cmd.Parameters.AddWithValue("@taikhoan", txttendangnhap.Text);
        ketnoi.cmd.Parameters.AddWithValue("@matkhau", txtpassword.Text);
        ketnoi.rd = ketnoi.cmd.ExecuteReader();
        bool login = ketnoi.rd.Read();

        if (login)
        {
            int check = phanquyen(txttendangnhap.Text);
            switch (check)
            {
                case 2:
                    Response.Write("<script> alert('Đăng nhập thành công')</script>");
                    Response.Redirect("~/admin/trangadmin.aspx");
                    txttendangnhap.Focus();
                    txttendangnhap.Text = "";
                    break;

                case 1:
                    Response.Write("<script>alert('Đăng nhập thành công')");
                    Response.Redirect("Default.aspx");
                    break;
            }
        }
        else
        {
            Response.Write("<script> alert('Sai tên đăng nhập hoặc mật khẩu')</script>");
            return;
        }

        //clDangKyTT dangky = new clDangKyTT();
        //if(dangky.kiemtraid(int value("1"))
        //{
        //    Response.Write("<script> alert('user')</script>");

        //}

        //else
        //{
        //    dangky.getID(txttendangnhap.Text,txtpassword.Text);
        //    Response.Redirect("tranguser.aspx");
        //}

    }
    public int phanquyen(string input)
    {
        ketnoi.cmd = new System.Data.SqlClient.SqlCommand("kiemtraquyen", ketnoi.getconn());
        ketnoi.cmd.CommandType = System.Data.CommandType.StoredProcedure;
        ketnoi.cmd.Parameters.AddWithValue("@Tendangnhap", input);
        int maquyen = (int)ketnoi.cmd.ExecuteScalar();
        return maquyen;
    }
    //private void CkeckGioHang()
    //{
    //    if (Session["Giohang"] != null)
    //    {
    //        DataTable dt = new DataTable();
    //        dt = (DataTable)Session["Giohang"];
    //        System.Int32 Quantity = 0;
    //        foreach (DataRow r in dt.Rows)
    //        {
    //            Quantity += Convert.ToInt32(r["SoLuong"]);
    //            lbcart.Text = Quantity.ToString();
    //        }
    //    }
    //    else
    //    {
    //        lbcart.Text = "O";
    //    }

    //}

}