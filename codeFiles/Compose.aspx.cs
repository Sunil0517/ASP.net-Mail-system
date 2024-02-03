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
        if (TextBox1.Text != "")
        {
            string query = "SELECT * FROM users WHERE username='" + TextBox1.Text + "'";
            ad = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "userName does not Exist";
            }
            else
            {
                query = "insert into emails values('" + Session["userName"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.ToString() + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>Mail Sent</script>");
                Response.Redirect("Compose.aspx");
            }
        }
        else
        {
            Label1.Text = "UserName is Required";
        }
        
        
    }
}