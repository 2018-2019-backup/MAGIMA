using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanceApplication
{
    public partial class NewCustomer : System.Web.UI.Page
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
                    dob.Text = Session["dob"].ToString();
                    gender.Text = Session["gen"].ToString();
                    occupation.Text = Session["occupation"].ToString();
                    mnumber.Text = Session["mobile"].ToString();
                    lnumber.Text = Session["landline"].ToString();
                    proof.Text = Session["proof"].ToString();
                    idnum.Text = Session["num"].ToString();
                    address.Text = Session["address"].ToString();
                    city.Text = Session["city"].ToString();
                    Reference.Text = Session["refs"].ToString();
                    refrelation.Text = Session["refrel"].ToString();

                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("FinanceApps1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                String sname = cname.Text;
                String sfname = fname.Text;
                String sdob = dob.Text;
                String sgen = gender.Text;
                String soccupation = occupation.Text;
                String smobile = mnumber.Text;
                String slan = lnumber.Text;
                String sproof = proof.SelectedItem.Text;
                String sidnum = idnum.Text;
                String saddress = address.Text;
                String scity = city.Text;
                String sref = Reference.Text;
                String srefrelation = refrelation.Text;

                cmd.Parameters.AddWithValue("@CustomerName", sname);
                cmd.Parameters.AddWithValue("@FathersName", sfname);
                cmd.Parameters.AddWithValue("@Dob", sdob);
                cmd.Parameters.AddWithValue("@Sex", sgen);
                cmd.Parameters.AddWithValue("@Occupation", soccupation);
                cmd.Parameters.AddWithValue("@MobileNumber", smobile);
                cmd.Parameters.AddWithValue("@LandLineNumber", slan);
                cmd.Parameters.AddWithValue("@IdProof", sproof);
                cmd.Parameters.AddWithValue("@IdNumber", sidnum);
                cmd.Parameters.AddWithValue("@Address", saddress);
                cmd.Parameters.AddWithValue("@City", scity);
                cmd.Parameters.AddWithValue("@Reference", sref);
                cmd.Parameters.AddWithValue("@ReferenceRelationship", srefrelation);
                //cmd.Parameters.AddWithValue("@Photo", sphone);


                int id = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Redirect("CustomerDetails.aspx?unique=" + id);
                //cmd.ExecuteNonQuery();
                con.Close();
            }
            else
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
                string slandline = lnumber.Text;
                string sproof = proof.SelectedItem.Text;
                string snum = idnum.Text;
                string saddress = address.Text;
                string scity = city.Text;
                string sref = Reference.Text;
                string srefrel = refrelation.Text;
                cmmd.Parameters.AddWithValue("@id", id);
                cmmd.Parameters.AddWithValue("@CustomerName", cust);
                cmmd.Parameters.AddWithValue("@FathersName", sfname);
                cmmd.Parameters.AddWithValue("@Dob", sdob);
                cmmd.Parameters.AddWithValue("@Sex", sgender);
                cmmd.Parameters.AddWithValue("@Occupation", occ);
                cmmd.Parameters.AddWithValue("@MobileNumber", mob);
                cmmd.Parameters.AddWithValue("@LandLineNumber", slandline);
                cmmd.Parameters.AddWithValue("@IdProof", sproof);
                cmmd.Parameters.AddWithValue("@IdNumber", snum);
                cmmd.Parameters.AddWithValue("@Address", saddress);
                cmmd.Parameters.AddWithValue("@City", scity);
                cmmd.Parameters.AddWithValue("@Reference", sref);
                cmmd.Parameters.AddWithValue("@ReferenceRelationship", srefrel);
                //cmmd.ExecuteNonQuery();
                int id1 = Convert.ToInt32(cmmd.ExecuteScalar());
                Response.Redirect("CustomerDetails.aspx?unique=" + id);
                con.Close();
                GridView grv = ((GridView)this.Page.PreviousPage.FindControl("gv"));

            }
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx");
        }
    }
}