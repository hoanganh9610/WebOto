using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ketnoi
/// </summary>
public class ketnoi
{
    public static SqlConnection cnn = null;
    public static SqlDataReader rd;
    public static DataSet ds;
    public static SqlCommand cmd;




    public static SqlConnection getconn()
    {
        string conn = ConfigurationManager.ConnectionStrings["XEMAY1ConnectionString"].ToString();
        cnn = new SqlConnection(conn);
        cnn.Open();
        return cnn;
    }
    public ketnoi()
    {

    }
}