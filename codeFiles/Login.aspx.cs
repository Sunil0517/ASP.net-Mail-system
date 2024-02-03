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
        string s = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(s);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text !="" && TextBox2.Text != "")
        {
            string query = "SELECT * FROM users WHERE username='" + TextBox1.Text + "' AND password='"+TextBox2.Text+"'";
            ad = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["userName"] = TextBox1.Text;
                
                Response.Redirect("Compose.aspx");
            }
            else
            {
                Label1.Text = "userName or Password is Incorrect";
            }
        }
        else
        {
            Label1.Text = "Enter userName and Password";
        }
    }
}