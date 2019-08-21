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
    public partial class customerdetail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("CustomerDetail2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Session["id"]=rd["id"].ToString();
                ccname.Text = rd["CustomerName"].ToString();
                ffname.Text = rd["FathersName"].ToString();
                ddob.Text = rd["Dob"].ToString();
                ggender.Text = rd["Sex"].ToString();
                ooccupation.Text = rd["Occupation"].ToString();
                mmnumber.Text = rd["MobileNumber"].ToString();
                almnumber.Text = rd["alternativemobilenumber"].ToString();
                llnumber.Text = rd["LandLineNumber"].ToString();
                pproof.Text = rd["IdProof"].ToString();
                iidnum.Text = rd["IdNumber"].ToString();
                aaddress.Text = rd["Address"].ToString();
                ccity.Text = rd["City"].ToString();
                rReference.Text = rd["Reference"].ToString();
                rrefrelation.Text = rd["ReferenceRelationship"].ToString();
                
            }
            rd.Close();
            con.Close();
          
        }
          

            con.Open();
            SqlCommand cmmd = new SqlCommand("insloan", con);
            cmmd.CommandType = CommandType.StoredProcedure;
            cmmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            SqlDataAdapter ad = new SqlDataAdapter(cmmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            gv1.DataSource = ds;
            gv1.DataBind();
           
            SqlCommand ccmd = new SqlCommand("emiloan2", con);
            ccmd.CommandType = CommandType.StoredProcedure;
            ccmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            SqlDataAdapter add = new SqlDataAdapter(ccmd);
            DataSet dst = new DataSet();
            add.Fill(dst);
            gv2.DataSource = dst;
            gv2.DataBind();
            con.Close();
        }


        protected void edit_Click(object sender, EventArgs e)
        {
            Button edit = (Button)sender;
            //GridViewRow row = (GridViewRow)edit.NamingContainer;
            //ViewState["ti"] = row.RowIndex;
            int Id = Convert.ToInt32(Session["id"]);
            Response.Redirect("customer.aspx?unique=" + Id);
          

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("del", con);
            cmd.CommandType = CommandType.StoredProcedure;
            Button edit = (Button)sender;
            int id = Convert.ToInt32(Session["id"]);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language='javascript'>window.alert('Record Deleted Successfully');window.location='Dashboard.aspx';</script>");
            //Response.Redirect("Dashboard.aspx");
        }

        protected void Loan_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewLoan.aspx");
        }
       

        protected void select_Click1(object sender, EventArgs e)
        {
            Response.Redirect("InterestCollectionDetails.aspx");
        }

        

        protected void emi_Click(object sender, EventArgs e)
        {

            Button edit = (Button)sender;
            GridViewRow row = (GridViewRow)edit.NamingContainer;
            ViewState["ri"] = row.RowIndex;
            ViewState["id"] = gv2.Rows[row.RowIndex].Cells[0].Text;
            Session["eid"] = ViewState["id"];
            ViewState["loanid1"] = gv2.Rows[row.RowIndex].Cells[4].Text;
            Session["loanid1"] = ViewState["loanid1"];
            int id2 = Convert.ToInt32(Session["eid"]);
            int loan1= Convert.ToInt32(Session["loanid1"]);
            Response.Redirect("EmiCollection.aspx?unique=" + id2 + "&loanid1="+loan1);
        }

        protected void interest_Click(object sender, EventArgs e)
        {
            Button edit = (Button)sender;
            GridViewRow row = (GridViewRow)edit.NamingContainer;
            ViewState["ri"] = row.RowIndex;
            ViewState["id"] = gv1.Rows[row.RowIndex].Cells[0].Text;
            Session["iid"] = ViewState["id"];
            ViewState["loanid"] = gv1.Rows[row.RowIndex].Cells[4].Text;
            Session["loanid"] = ViewState["loanid"];
            int id5 = Convert.ToInt32(Session["iid"]);
            int loan = Convert.ToInt32(Session["loanid"]);
            Response.Redirect("InterestCollection.aspx?unique=" + id5 +"&loanid="+loan);
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }


        
    }
}