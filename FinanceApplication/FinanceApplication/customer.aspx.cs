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
    public partial class customer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {

                    cname.Text = Session["name"].ToString();
                    fname.Text = Session["fname"].ToString();
                    //dob.Text = Session["dob"].ToString();

                    dob.Text = String.Format("{0:yyyy-MM-dd}", Session["dob"]);
                    gender.Text = Session["gen"].ToString();
                    occupation.Text = Session["occupation"].ToString();
                    mnumber.Text = Session["mobile"].ToString();
                    almnumber.Text = Session["alternativemobile"].ToString();
                    lnumber.Text = Session["landline"].ToString();
                    proof.Text = Session["proof"].ToString();
                    idnum.Text = Session["num"].ToString();
                    address.Text = Session["address"].ToString();
                    city.Text = Session["city"].ToString();
                    Reference.Text = Session["refs"].ToString();
                    refrelation.Text = Session["refrel"].ToString();
                    
                   
                }
                //else
                //{
                //    cname.Text = "";
                //}
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (cname.Text != "" && fname.Text != "" && dob.Text != "" && gender.Text != "" && occupation.Text != "" && mnumber.Text != "" && lnumber.Text != "" && proof.Text != "" &&
                   idnum.Text != "" && address.Text != "" && city.Text != "" && Reference.Text != "" && refrelation.Text != "" && (Session["id"] != null))
            {
                con.Open();
                SqlCommand cmmd = new SqlCommand("ups", con);
                cmmd.CommandType = CommandType.StoredProcedure;
                int id = Convert.ToInt32(Session["id"]);
                string cust = cname.Text;
                string sfname = fname.Text;
                string sdob = dob.Text;
                string sgender = gender.Text;
                string occ = occupation.Text;
                string mob = mnumber.Text;
                string almob = almnumber.Text;
                string slandline = lnumber.Text;
                string sproof = proof.SelectedItem.Text;
                string snum = idnum.Text;
                string saddress = address.Text;
                string scity = city.Text;
                string sref = Reference.Text;
                string srefrel = refrelation.Text;
                //HttpPostedFile postedFile = image.PostedFile;
                //string filename = Path.GetFileName(postedFile.FileName);

                cmmd.Parameters.AddWithValue("@id", id);
                cmmd.Parameters.AddWithValue("@CustomerName", cust);
                cmmd.Parameters.AddWithValue("@FathersName", sfname);
                cmmd.Parameters.AddWithValue("@Dob", sdob);
                cmmd.Parameters.AddWithValue("@Sex", sgender);
                cmmd.Parameters.AddWithValue("@Occupation", occ);
                cmmd.Parameters.AddWithValue("@MobileNumber", mob);
                cmmd.Parameters.AddWithValue("@alMobileNumber", almob);
                cmmd.Parameters.AddWithValue("@LandLineNumber", slandline);
                cmmd.Parameters.AddWithValue("@IdProof", sproof);
                cmmd.Parameters.AddWithValue("@IdNumber", snum);
                cmmd.Parameters.AddWithValue("@Address", saddress);
                cmmd.Parameters.AddWithValue("@City", scity);
                cmmd.Parameters.AddWithValue("@Reference", sref);
                cmmd.Parameters.AddWithValue("@ReferenceRelationship", srefrel);
                //SqlParameter paramImageData = new SqlParameter()
                //{
                //    ParameterName = "@Photo",
                //};
                //cmmd.Parameters.Add(paramImageData);
                cmmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>window.alert('Customer Data Updated Successfully');window.location='Dashboard.aspx';</script>");
                //Response.Redirect("Dashboard.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}