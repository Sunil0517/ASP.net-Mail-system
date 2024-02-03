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
    SqlCommand cmd;
    SqlDataAdapter ad;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();

        if (!IsPostBack)
        {
            string s = "select * from users where username='"+Session["userName"].ToString()+"'";
            ad = new SqlDataAdapter(s, con); 
            DataSet ds = new DataSet();
            ad.Fill(ds);
            TextBox1.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0][5].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "update users set name='" + TextBox1.Text + "', email='" + TextBox2.Text + "',password='" + TextBox4.Text + "',city='" + TextBox5.Text + "' where username='"+TextBox3.Text+"'";
        cmd = new SqlCommand(s,con);
        cmd.ExecuteNonQuery();
    }
}