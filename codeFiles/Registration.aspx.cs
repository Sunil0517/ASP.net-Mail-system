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
    SqlCommand cmd;
    SqlDataAdapter ad;

    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text != "" && TextBox4.Text != "" && TextBox1.Text!="")
        {
            string query = "SELECT * FROM users WHERE username='" + TextBox3.Text + "'";
            ad = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Label1.Text = "userName Already Exist";
            }
            else
            {
                string s = "insert into users values('" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>Data Inserted</script>");
                Response.Redirect("Login.aspx");
            }
        }
        else
        {
            Label1.Text = "UserNamr and Password is Required";
        }
    }
}