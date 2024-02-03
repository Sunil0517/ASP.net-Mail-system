using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
        string query = "SELECT * FROM emails WHERE emailFrom='" + Session["userName"].ToString() + "' ORDER BY dateTime DESC";
        ad = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        r1.DataSource = ds;
        r1.DataBind();
    }
}