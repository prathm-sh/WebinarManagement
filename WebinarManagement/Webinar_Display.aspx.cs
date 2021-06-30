using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace WebinarManagement
{
    public partial class Webinar_Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from webinar",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            */
        }
    }
}