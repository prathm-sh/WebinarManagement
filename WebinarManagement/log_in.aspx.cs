using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebinarManagement
{
    public partial class log_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = txtUser.Text;
            if (txtPass.Text.Equals("Pass@123"))
            {
                if (txtUser.Text.Equals("admin")) { 
                    Session["user"] = txtUser.Text;
                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + "Invalid user" + "');", true);
        }
    }
}