using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class report : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
      SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=login;User ID=sa;Password=poscard");
            con.Open();
            SqlDataAdapter sda=new SqlDataAdapter("select * from Employee",con);
            DataTable dtb=new DataTable();
            sda.Fill(dtb);
            empgrid.DataSource=dtb;
            empgrid.DataBind();
    }
}