using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebinarManagement
{
    public partial class Student_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Student_Register values(@Student_Name,@Student_Email,@Student_Pass,@Student_Phone,@Student_About,@Student_Webid)", con);
                cmd.Parameters.AddWithValue("@Student_Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Student_Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Student_Pass", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Student_Phone", int.Parse(txtContact.Text));
                cmd.Parameters.AddWithValue("@Student_About", txtAbout.Text);
                cmd.Parameters.AddWithValue("@Student_Webid", DropDownList1.SelectedValue);
                cmd.ExecuteNonQuery();
                Response.Write("Added Successfully");
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}