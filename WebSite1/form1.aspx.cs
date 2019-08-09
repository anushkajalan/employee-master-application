using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class form1 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=login;User ID=sa;Password=poscard");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", textbox1.Text);
            cmd.Parameters.AddWithValue("@password", textbox2.Text);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = cmd.ExecuteNonQuery();


            //if (dt.Rows.Count > 0)
            //{
            //    Label3.Text = "Correct login!";
            //}
            //else
            //{
            //    Label3.Text = "Incorrect login!";
            //}
            //con.Close();
            int result = (Int32)cmd.ExecuteScalar();
            con.Close();
            if (result >= 1)
            {
                Response.Redirect("http://localhost:65342/emp.aspx");
            }
            else
            {
                Label3.Text = "Incorrect login!";
            }
        }
       
        catch (Exception ex)
        {
            //MessageBox.Show("Can not open connection ! ");
        }

    }
}