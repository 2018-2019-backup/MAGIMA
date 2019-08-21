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
    public partial class Emi : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {


            //decimal amount, rate, mon, total, totalins, month, pay;
            //String cuid = Session["cid"].ToString();
            //id.Text = cuid;
            //pamount.Text = Session["principal"].ToString();
            //amount = Convert.ToDecimal(pamount.Text);
            //interest.Text = Session["interest"].ToString();
            //rate = Convert.ToDecimal(interest.Text) / 100;
            //months.Text = Session["month"].ToString();
            //mon = Convert.ToDecimal(months.Text);
            //Type.Text = Session["type"].ToString();
            //total = amount * (1 + ((mon / 12) * rate));
            //tamount.Text = total.ToString();
            //totalins = (amount * (mon / 12) * rate);
            //tip.Text = totalins.ToString();


            //if (rate > 1)
            //{
            //    rate = rate / 100;
            //}
            //pay = (amount * Math.Pow((rate / 12) + 1, (mon)) * rate / 12) / (Math.Pow(rate / 12 + 1, (mon)) - 1);
            //emi.Text = pay.ToString();

            double amount, rate, mon, total, totalins,pay;
            double amount1 = Convert.ToDouble(Session["principal"]);
            Math.Round(amount1,2);
            String cuid = Session["cid"].ToString();
            id.Text = cuid;
            pamount.Text = amount1.ToString();
            amount = Convert.ToDouble(pamount.Text);
            interest.Text = Session["interest"].ToString();
            rate = Convert.ToDouble(interest.Text) / 100;
            months.Text = Session["month"].ToString();
            mon = Convert.ToInt16(months.Text);
            Type.Text = Session["type"].ToString();
            //total = amount * (1 + ((mon / 12) * rate));
            pay = (amount * Math.Pow((rate / 12) + 1, (mon)) * rate / 12) / (Math.Pow(rate / 12 + 1, (mon)) - 1);
          double pay1=  Math.Round(pay,2);
            total = pay1 * mon;
          double total1=  Math.Round(total,2);
            tamount.Text = total1.ToString();
            //totalins = (amount * (mon / 12) * rate);
            totalins = total - amount;
         double totalins1= Math.Round(totalins,2);
            tip.Text = totalins1.ToString();


            if (rate > 1)
            {
                rate = rate / 100;
            }
            
            emi.Text = pay.ToString();
          
          
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            
                con.Open();
                SqlCommand cmd = new SqlCommand("emiins23", con);
                cmd.CommandType = CommandType.StoredProcedure;
                int cid = Convert.ToInt32(id.Text);
                double amount = Convert.ToDouble(pamount.Text);
                double amount1 =Math.Round(amount,2);
                double rate = Convert.ToDouble(interest.Text);
                double rate1=Math.Round(rate,2);
                double mon = Convert.ToDouble(months.Text);
                double mon1=Math.Round(mon,2);
                string types = Type.Text;
                double total = Convert.ToDouble(tamount.Text);
                double total1= Math.Round(total,2);
                double tin = Convert.ToDouble(tip.Text);
                double tin1 =Math.Round(tin,2);
                double emii = Convert.ToDouble(emi.Text);
                double emii1=Math.Round(emii, 2);
                string date = dat.Text;
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.Parameters.AddWithValue("@amt", amount1);
                cmd.Parameters.AddWithValue("@rate", rate1);
                cmd.Parameters.AddWithValue("@mon", mon1);
                cmd.Parameters.AddWithValue("@types", types);
                cmd.Parameters.AddWithValue("@total", total1);
                cmd.Parameters.AddWithValue("@tin", tin1);
                cmd.Parameters.AddWithValue("@emi", emii1);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.ExecuteNonQuery();
                con.Close();
                //int Id = Convert.ToInt32(Session["id"]);
                //Response.Redirect("customerdetail.aspx?unique=" + Id);
                //Response.Redirect("NewLoan.aspx");
                int ids = Convert.ToInt32(Session["id"]);
                Response.Redirect("customerdetail.aspx?unique=" + ids);
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }
    }
}