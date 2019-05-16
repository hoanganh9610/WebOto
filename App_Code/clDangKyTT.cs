using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for clDangKyTT
/// </summary>
public class clDangKyTT
{
    SqlConnection chiakhoa = new SqlConnection("Data Source=DESKTOP-EKLRL2R\\SQLEXPRESS;Initial Catalog=XEMAY1;Integrated Security=True");

    public bool Kiemtradangnhap(string tendangnhap)
    {
        string Ktdangnhap = "select Tendangnhap from [TAIKHOAN] where Tendangnhap='" + tendangnhap + "'";
        chiakhoa.Open();
        SqlCommand commanddangnhap = new SqlCommand(Ktdangnhap, chiakhoa);
        SqlDataReader rederdangnhap = commanddangnhap.ExecuteReader();
        if (rederdangnhap.HasRows)
        {
            chiakhoa.Close();
            return true;
        }
        else
        {
            chiakhoa.Close();
            return false;
        }
    }
    public bool Kiemtramatkhau(string matkhau)
    {
        string ktmk = "select Matkhau from [TAIKHOAN] where Matkhau='" + matkhau + "'";
        chiakhoa.Open();
        SqlCommand commandmk = new SqlCommand(ktmk, chiakhoa);
        SqlDataReader readermatkhau = commandmk.ExecuteReader();
        if (readermatkhau.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public bool kiemtraemail(string email)
    {
        string ktemail = "select Tendangnhap from [TAIKHOAN] where Email='" + email + "'";
        chiakhoa.Open();
        SqlCommand ktem = new SqlCommand(ktemail, chiakhoa);
        SqlDataReader readeremail = ktem.ExecuteReader();
        if (readeremail.HasRows == false)
        {
            chiakhoa.Close();
            return false;
        }
        else
        {
            chiakhoa.Close();
            return true;
        }
    }
    public void Dlkhachhang(int id, string ten, string mk, string sdt, string e, string d)
    {
        string them = "insert into [TAIKHOAN] (Idtaikhoan,Tendangnhap,Matkhau,Sodienthoai,Email,Diachi)values('" + id + "','" + ten + "','" + mk + "','" + sdt + "','" + e + "','" + d + "')";
        chiakhoa.Open();
        SqlCommand insert = new SqlCommand(them, chiakhoa);
        insert.ExecuteNonQuery();
        chiakhoa.Close();

    }
}