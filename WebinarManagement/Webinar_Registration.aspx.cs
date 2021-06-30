using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebinarManagement
{
    public partial class Webinar_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            string strpath = (Path.GetExtension(FileUpload1.FileName)).ToLower();
            if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
            {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Upload Valid File Format');", true);
             }
            else
            {

                    String filename = DateTime.Now.ToString("yyyy-MM-ddTHHmmss") + strpath;
                    String path = Server.MapPath("img");

                    String filePath=path + "\\" + filename;
                    String filelocation = "~/img/" + filename;
                    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Webinar values(@Webname,@Webdate,@Webtime,@Webfees,@Webimages,@Webdiscount,@Webabout)", con);
                    cmd.Parameters.AddWithValue("@webname", txtName.Text);
                    cmd.Parameters.AddWithValue("@Webdate", txtDate.Text);
                    cmd.Parameters.AddWithValue("@Webtime",txtTime.Text);
                    cmd.Parameters.AddWithValue("@webfees", int.Parse(txtFee.Text));                    
                    cmd.Parameters.AddWithValue("@webimages", filelocation);
                    cmd.Parameters.AddWithValue("@webdiscount", int.Parse(txtDiscount.Text));
                    cmd.Parameters.AddWithValue("@webabout", txtDescription.Text);
                    cmd.ExecuteNonQuery();
                    FileUpload1.SaveAs(filePath);


                    /*       var c1 = new Database1Entities();
                          Webinar webinar = new Webinar()
                          {
                              Webname = txtName.Text,
                              Webdate = txtDate.Text,
                              Webtime = txtTime.Text,
                              Webfees = int.Parse(txtFee.Text),
                              Webdiscount = int.Parse(txtDiscount.Text),
                              Webabout = txtDescription.Text,
                              Webimages = "~/img/" + filename

                           };
                           c1.Webinars.Add(webinar);
                           c1.SaveChanges();
                          FileUpload1.SaveAs(filePath);                     
                      */
                    Response.Write("Webinar Added Succesfully");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}