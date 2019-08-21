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
    public partial class Interest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            //decimal amount,rate,mon,total,totalins;
            // String cuid= Session["cid"].ToString();
            // id.Text = cuid;
            // pamount.Text = Session["principal"].ToString();
            //amount=Convert.ToDecimal(pamount.Text);
            // interest.Text = Session["interest"].ToString();
            // rate = (Convert.ToDecimal(interest.Text))/100;
            //months.Text = Session["month"].ToString();
            //mon = Convert.ToDecimal(months.Text);
            // Type.Text = Session["type"].ToString();
            // //total = ( * rate * mon) / 100;
            // total = amount * (1 + ((mon/12) * rate));
            // tamount.Text = total.ToString();
            // totalins = (amount * (mon / 12) * rate);          
            //tip.Text = totalins.ToString();
            double amount, rate, mon, total, totalins,cost,inpermon,last,rate1;
            //Math.Round(totalins);
            String cuid = Session["cid"].ToString();
            id.Text = cuid;
            pamount.Text = Session["principal"].ToString();
            amount = Convert.ToDouble(pamount.Text);
            interest.Text = Session["interest"].ToString();
            rate = Convert.ToDouble(interest.Text) / 100;
            
            //mon = Convert.ToInt32(Session["month"]);
            Type.Text = Session["type"].ToString();
            //total = amount * (1 + ((mon / 12) * rate));
            totalins = (amount *  rate);
            total = (totalins) + amount;
            tamount.Text = total.ToString();
            
            tip.Text = totalins.ToString();
            cost = amount / 100;
         double cost1 =Math.Round(cost, 2);
            dcost.Text = cost1.ToString();
            //inpermon = (totalins / mon);
            inpermon = totalins;
            double inpermon1 = Math.Round(inpermon, 2);
            ipm.Text = inpermon1.ToString();
            last = amount - (cost1 + inpermon1);
            double last1= Math.Round(last, 2);
            final.Text = last1.ToString();
            //Session["month1"] = mon;
            rate1 = Convert.ToDouble(interest.Text);
            Session["interate"]=rate1;
            Session["final"] = tip.Text;


        }

        protected void btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("interestins21", con);
            cmd.CommandType = CommandType.StoredProcedure;
            int cid = Convert.ToInt32(id.Text);
            double amount = Convert.ToDouble(pamount.Text);
            double amount1=Math.Round(amount, 2);
            double rate = Convert.ToDouble(interest.Text);
           double rate1= Math.Round(rate, 2);
           //double mon = Convert.ToDouble(Session["month"]);
           //double mon1=Math.Round(mon, 2);
           double mon1 = 0;
            string types = Type.Text;
            double total = Convert.ToDouble(tamount.Text);
            double total1=Math.Round(total, 2);
            double tin = Convert.ToDouble(tip.Text);
            double tin1=Math.Round(tin, 2);
            string date = dat.Text;
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.Parameters.AddWithValue("@amt", amount1);
            cmd.Parameters.AddWithValue("@rate", rate1);
            cmd.Parameters.AddWithValue("@mon", mon1);
            cmd.Parameters.AddWithValue("@types", types);
            cmd.Parameters.AddWithValue("@total", total1);
            cmd.Parameters.AddWithValue("@tin", tin1);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
            con.Close();
            int ids = Convert.ToInt32(Session["id"]);
            Response.Redirect("customerdetail.aspx?unique=" + ids);
           
            }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }
    }
}