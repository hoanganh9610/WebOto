using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    CSDL x = new CSDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckDN();
    }
    protected void btntimkiem_click(object sender, EventArgs e)
    {
        xemayTableAdapters.QueriesTableAdapter a = new xemayTableAdapters.QueriesTableAdapter();
        string sChuoi = txttimkiem.Text;
        Response.Redirect("~/TimKiemSanPham.aspx?a=" + sChuoi + "");
    }
    private void CheckDN()
    {
        try
        {
            string TenDN = Session["Tendangnhap"].ToString();
            if (TenDN == null || TenDN == string.Empty || TenDN == "")
            {
                lbtendn.Visible = false;
                btdangxuat.Visible = false;
                btndangnhap.Visible = true;
            }
            else
            {
                lbtendn.Visible = true;
                btdangxuat.Visible = true;
                btndangnhap.Visible = false;
                lbtendn.Text = "XIN CHÀO:" + TenDN +"/";
                btdangxuat.Text = "ĐĂNG XUẤT";
            }
        }
        catch (Exception)
        {

        }
    }
    protected void btdangxuat_Click(object sender, EventArgs e)
    {
        Session["Tendangnhap"] = null;
        Response.Redirect("/");
        //btdangxuat.Visible = false;
    }
}