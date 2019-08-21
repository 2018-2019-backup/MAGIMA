using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanceApplication
{
    public partial class CustomerNew : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_Click(object sender, EventArgs e)
        {

            //if (cname.Text != "" && fname.Text != "" && dob.Text != "" && gender.Text != "" && occupation.Text != "" && mnumber.Text != "" && lnumber.Text != "" && proof.Text != "" &&
            //    idnum.Text != "" && address.Text != "" && city.Text != "" && Reference.Text != "" && refrelation.Text != "" && (Session["id"] == null))

            con.Open();
            //SqlCommand cmd = new SqlCommand("Financeinsert1", con);
            SqlCommand cmd = new SqlCommand("Financeinsert2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            String sname = cname.Text;
            String sfname = fname.Text;
            String sdob = dob.Text;
            String sgen = gender.Text;
            String soccupation = occupation.Text;
            String smobile = mnumber.Text;
            String salmobile = almnumber.Text;
            String slan = lnumber.Text;
            String sproof = proof.SelectedItem.Text;
            String sidnum = idnum.Text;
            String saddress = address.Text;
            String scity = city.Text;
            String sref = Reference.Text;
            String srefrelation = refrelation.Text;
            //string filename = Path.GetFileName(image.PostedFile.FileName);
            //image.SaveAs(Server.MapPath("~/Images/" + filename));
            HttpPostedFile postedFile = image.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            //if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
            //    || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                cmd.Parameters.AddWithValue("@CustomerName", sname);
                cmd.Parameters.AddWithValue("@FathersName", sfname);
                cmd.Parameters.AddWithValue("@Dob", sdob);
                cmd.Parameters.AddWithValue("@Sex", sgen);
                cmd.Parameters.AddWithValue("@Occupation", soccupation);
                cmd.Parameters.AddWithValue("@MobileNumber", smobile);
                cmd.Parameters.AddWithValue("@alMobileNumber", salmobile);
                cmd.Parameters.AddWithValue("@LandLineNumber", slan);
                cmd.Parameters.AddWithValue("@IdProof", sproof);
                cmd.Parameters.AddWithValue("@IdNumber", sidnum);
                cmd.Parameters.AddWithValue("@Address", saddress);
                cmd.Parameters.AddWithValue("@City", scity);
                cmd.Parameters.AddWithValue("@Reference", sref);
                cmd.Parameters.AddWithValue("@ReferenceRelationship", srefrelation);
                //cmd.Parameters.AddWithValue("@Photo", "Images/" + filename);

                SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@Photo",
                        Value = bytes
                    };
                cmd.Parameters.Add(paramImageData);
                cmd.ExecuteNonQuery();

                //lbls.Visible = true;
                //lbls.Text = "Customer created successfully";
                //Response.Write("<script>alert('Customer Created Successfully');</script>");
                Response.Write("<script language='javascript'>window.alert('New Customer Created Successfully');window.location='Dashboard.aspx';</script>");
                //Response.Redirect("Dashboard.aspx");
                con.Close();
                System.Threading.Thread.Sleep(5000);

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(5000);
            Response.Redirect("Dashboard.aspx");

        }
    }
}


