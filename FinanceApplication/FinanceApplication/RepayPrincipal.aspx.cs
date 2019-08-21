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
    public partial class RepayPrincipal : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                loadInfo();
        }
        private void loadInfo()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("repaypricipalread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", Request.QueryString["unique"].ToString());
            cmd.Parameters.AddWithValue("@plid", Request.QueryString["siloanid"].ToString());
            SqlDataReader rd1 = cmd.ExecuteReader();
            while (rd1.Read())
            {
                double famount = Convert.ToDouble(rd1["newpricipalamount"]);
                double famount1 = Math.Round(famount, 2);
                ViewState["sfamount"] = famount1.ToString();
            }
            rd1.Close();
            con.Close();


            if (ViewState["sfamount"] == null)
            {
                con.Open();
                SqlCommand cmmd = new SqlCommand("principalread", con);
                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.AddWithValue("@rid", Request.QueryString["unique"].ToString());
                cmmd.Parameters.AddWithValue("@ilid", Request.QueryString["siloanid"].ToString());
                SqlDataReader rd = cmmd.ExecuteReader();
                //Session["pay"] = payamount.Text;
                Session["amount"] = pamount.Text;
                //int cid = Convert.ToInt32(Session["id"]);
                //int loanid = Convert.ToInt32(Session["lid"]);
                while (rd.Read())
                {
                    int id = Convert.ToInt32(rd["customerid"]);
                    loan.Text = rd["loanid"].ToString();

                    pamount.Text = rd["principalamount"].ToString();
                    date.Text = rd["createddate"].ToString();
                    finalpamount.Text = rd["principalamount"].ToString();
                    Session["pid"] = id;
                    Session["iln"] = loan.Text;
                    Session["finalpamount"] = finalpamount.Text;
                }
                rd.Close();
                con.Close();
            }
            //Session["pay"] = payamount.Text;
            else
            {
                con.Open();
                SqlCommand cmmd = new SqlCommand("principalread", con);
                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.AddWithValue("@rid", Request.QueryString["unique"].ToString());
                cmmd.Parameters.AddWithValue("@ilid", Request.QueryString["siloanid"].ToString());
                SqlDataReader rd = cmmd.ExecuteReader();
                Session["pay"] = payamount.Text;
                while (rd.Read())
                {
                    int id = Convert.ToInt32(rd["customerid"]);
                    loan.Text = rd["loanid"].ToString();
                    pamount.Text = rd["principalamount"].ToString();
                    date.Text = rd["createddate"].ToString();
                    //finalpamount.Text = rd["principalamount"].ToString();
                    Session["pid"] = id;
                    Session["iln"] = loan.Text;
                    finalpamount.Text = ViewState["sfamount"].ToString();
                }
                rd.Close();
                con.Close();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {         
            con.Open();
            SqlCommand cmd = new SqlCommand("repayprincipalins", con);
            cmd.CommandType = CommandType.StoredProcedure;
            int spid = Convert.ToInt32(Session["pid"]);
            int sloan = Convert.ToInt32(Session["iln"]);
            double pricipalamount = Convert.ToDouble(pamount.Text);
           double pricipalamount1=Math.Round(pricipalamount,2);
            string sdate = date.Text;
            double famount = Convert.ToDouble(finalpamount.Text);
           double famount1= Math.Round(famount, 2);
            double spayamount = Convert.ToDouble(payamount.Text);
            double spayamount1=Math.Round(spayamount, 2);
            double finalamount = famount1 - spayamount1;
           double finalamount1= Math.Round(finalamount, 2);
            ViewState["sfamount"] = finalamount1;
            cmd.Parameters.AddWithValue("@id",spid);
             cmd.Parameters.AddWithValue("@loan",sloan);
             cmd.Parameters.AddWithValue("@pa", pricipalamount1);
             cmd.Parameters.AddWithValue("@date", sdate);
             cmd.Parameters.AddWithValue("@pamount",famount1);
             cmd.Parameters.AddWithValue("@spay",spayamount1);
             cmd.Parameters.AddWithValue("@famount",finalamount1);
             cmd.ExecuteNonQuery();
             con.Close();

         
             Response.Redirect("Repay Interest.aspx?unique=" + spid + "&siloanid=" + sloan);
             //Response.Redirect("InterestCollection.aspx?unique=" + spid + "&siloanid=" + sloan);
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }
    }
}