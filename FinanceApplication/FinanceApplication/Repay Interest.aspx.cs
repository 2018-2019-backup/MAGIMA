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
    public partial class Repay_Interest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        double total, mon, rate, smonthlyinterest, value;
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
            double final = Convert.ToDouble(ViewState["sfamount"]);

            if (ViewState["sfamount"] == null)
            {
                //double mon1;
                //interestamount.Text = Session["pamount"].ToString();
                ////installmentno.Text = "";
                //mon1 = Convert.ToDouble(Session["intpermon"]);
                //interestpermonth.Text = mon1.ToString();
                //pay.Text = mon1.ToString();
                con.Open();
                SqlCommand cmmd = new SqlCommand("temp", con);
                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                cmmd.Parameters.AddWithValue("@ilid", Request.QueryString["siloanid"].ToString());

                SqlDataReader rd = cmmd.ExecuteReader();
                while (rd.Read())
                {
                    loan.Text = Session["lid"].ToString();
                    int id = Convert.ToInt32(rd["customerid"]);
                    total = Convert.ToDouble(rd["principalamount"]);
                    double total1 = Math.Round(total, 2);
                    Session["pamount"] = total1;
                    mon = Convert.ToDouble(rd["months"]);
                    double mon1 = Math.Round(mon, 2);
                    Session["month"] = mon1;
                    rate = Convert.ToDouble(rd["interest"]);
                    value = (total1 * rate) / 100;
                    //Session["interest"] = value / mon;
                    double value1 = Math.Round(value, 2);
                    interestamount.Text = Session["pamount"].ToString();
                    Session["interest"] = value1;
                    interestpermonth.Text = Session["interest"].ToString();
                    pay.Text = Session["interest"].ToString();
                    Session["id"] = id;
                }
                rd.Close();
                con.Close();
            }
            else
            {
                //double mon1;
                //double mon1 = Convert.ToDouble(Session["month"]);


                //interestamount.Text = Session["pamount"].ToString();
                //interestpermonth.Text = Session["interest"].ToString();
                //pay.Text = Session["interest"].ToString();
                con.Open();
                SqlCommand cmmd = new SqlCommand("temp", con);
                cmmd.CommandType = CommandType.StoredProcedure;
                cmmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                cmmd.Parameters.AddWithValue("@ilid", Request.QueryString["siloanid"].ToString());
                //double final = Convert.ToDouble(ViewState["famount"]);
                SqlDataReader rd = cmmd.ExecuteReader();

                while (rd.Read())
                {
                    mon = Convert.ToDouble(rd["months"]);
                    double mon1 = Math.Round(mon, 2);
                    Session["month"] = mon1;
                    rate = Convert.ToDouble(rd["interest"]);
                }
                rd.Close();
                //con.Close();



                //value = (final * (mon / 12) * rate) / 100;
                value = (final * rate) / 100;
                //Session["interest"] = value / mon;
                double value1 = Math.Round(value, 2);
                Session["interest"] = value1;
                //interestamount.Text = Session["pamount"].ToString();
                loan.Text = Session["lid"].ToString();
                interestamount.Text = ViewState["sfamount"].ToString();
                interestpermonth.Text = Session["interest"].ToString();
                pay.Text = Session["interest"].ToString();

            }
            con.Close();
            gridfill();
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            con.Open();
            int sloanno = Convert.ToInt32(Session["lid"]);
            int id1 = Convert.ToInt32(Session["id"]);
            int sno = Convert.ToInt32(installmentno.Text);
            Session["installmonth"] = sno;
            string sdate = date.Text;
            double month = Convert.ToDouble(Session["month"]);
            double month1 = Math.Round(month, 2);
            //if (sno <= month)
            //{

            SqlCommand cmd = new SqlCommand("repaypric2", con);
            cmd.CommandType = CommandType.StoredProcedure;
            smonthlyinterest = Convert.ToDouble(Session["interest"]);
            double smonthlyinterest1 = Math.Round(smonthlyinterest, 2);
            cmd.Parameters.AddWithValue("@id", id1);
            cmd.Parameters.AddWithValue("@sno", sno);
            cmd.Parameters.AddWithValue("@monthlyinterest", smonthlyinterest1);
            cmd.Parameters.AddWithValue("@date", sdate);
            cmd.Parameters.AddWithValue("@loanno", sloanno);
            cmd.ExecuteNonQuery();
            con.Close();
            loadInfo();
            //gridfill();

            //}
            //int famount = Convert.ToInt32(ViewState["sfamount"]);
            //Context.Items.Add("finalprincipal", ViewState["sfamount"].ToString());
            //Response.Redirect("InterestCollection.aspx?sfamount=famount" );

        }

        public void gridfill()
        {
            double month = Convert.ToDouble(Session["month"]);
            Math.Round(month, 2);
            double installmonth = Convert.ToDouble(Session["installmonth"]);
            Math.Round(installmonth, 2);
            //con.Open();
            SqlCommand cmdd = new SqlCommand("repayins", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter ad = new SqlDataAdapter(cmdd);
            int id2 = Convert.ToInt32(Session["id"]);
            cmdd.Parameters.AddWithValue("@id", id2);
            int sloanno = Convert.ToInt32(Session["lid"]);
            cmdd.Parameters.AddWithValue("@loanno", sloanno);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            gv.DataSource = ds;
            gv.DataBind();
            //con.Close();
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }

        //protected void Back_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("InterestCollection.aspx");
        //}

    }
}