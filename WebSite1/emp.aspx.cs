using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class emp : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label6.Visible=false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
  string connetionString = null;
            SqlConnection cnn ;
            connetionString = "Data Source=.;Initial Catalog=login;User ID=sa;Password=poscard";
            cnn = new SqlConnection(connetionString);
            try
            {
                cnn.Open();
                string sql = "INSERT into Employee (fname,lname,role,dob) VALUES ('" + TextBox4.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem.Text + "','" + datepicker.Value + "')";
                SqlCommand cmd = new SqlCommand(sql, cnn);
                            cmd.ExecuteNonQuery();
                            Label6.Visible=true;
                            cnn.Close();
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Can not open connection ! ");
            }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connetionString = null;
        SqlConnection cnn;
        connetionString = "Data Source=.;Initial Catalog=login;User ID=sa;Password=poscard";
        cnn = new SqlConnection(connetionString);
        try
        {
            cnn.Open();
            string sql = "UPDATE Employee SET fname='" + TextBox4.Text + "',lname='" + TextBox6.Text + "',role='" + DropDownList1.SelectedItem.Text + "',dob='" + datepicker.Value + "' where empid='" + TextBox7.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, cnn);
            cmd.ExecuteNonQuery();
            Label6.Visible = true;
            cnn.Close();
        }
        catch (Exception ex)
        {
            //MessageBox.Show("Can not open connection ! ");
        }
        
       
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connetionString = null;
        SqlConnection cnn;
        connetionString = "Data Source=.;Initial Catalog=login;User ID=sa;Password=poscard";
        cnn = new SqlConnection(connetionString);
        try
        {
            cnn.Open();
            string sql = "DELETE Employee WHERE empid='" + TextBox7.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, cnn);
            cmd.ExecuteNonQuery();
            Label6.Visible = true;
            cnn.Close();
        }
        catch (Exception ex)
        {
            //MessageBox.Show("Can not open connection ! ");
        }
        //con.Open();
        //SqlCommand cmd = new SqlCommand("DELETE Employee WHERE empid='" +TextBox7.Text + "'",con);
        //cmd.ExecuteNonQuery();
        //con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:65342/report.aspx");
    }
}