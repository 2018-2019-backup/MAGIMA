using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FinanceApplication
{
    public partial class FinanceProject : System.Web.UI.MasterPage
    {
        //protected void Page_PreInit(object sender, EventArgs e)
        //{
        //    //if (Request.QueryString["Theme"] != null)
        //    //{
        //    //    Page.Theme = Request.QueryString["Theme"].ToString();
        //    //}
        //    //string theme = Session["theme"] as string;
        //    //if (theme != null)
        //    //{
        //    //    Page.Theme = theme;
        //    //}

       
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["id"] == null)
                //    Response.Redirect("authentication.aspx");
                if (Session["theme"] != null)
                {
                    int selectedindex = Convert.ToInt32(Session["selectedindex"]);
                    if (selectedindex == 1)
                    {
                        nav1.Style.Add("background-color", "#9061e2");
                        drop.Style.Add("background-color", "#9061e2");
                        A1.Style.Add("background-color", "#9061e2");
                        A2.Style.Add("background-color", "#9061e2");
                        sub1.Style.Add("background-color", "#9061e2");
                        sub2.Style.Add("background-color", "#9061e2");
                    }
                    else if (selectedindex == 2)
                    {
                        nav1.Style.Add("background-color", "#228B22");
                        //li1.Style.Add("background-color", "#228B22");
                        drop.Style.Add("background-color", "#228B22");
                        A1.Style.Add("background-color", "#228B22");
                        A2.Style.Add("background-color", "#228B22");
                        sub1.Style.Add("background-color", "#228B22");
                        sub2.Style.Add("background-color", "#228B22");
                    }
                    else if (selectedindex == 3)
                    {
                        nav1.Style.Add("background-color", "#800000");
                        //li1.Style.Add("background-color", "#800000");
                        drop.Style.Add("background-color", "#800000");
                        A1.Style.Add("background-color", "#800000");
                        A2.Style.Add("background-color", "#800000");
                        sub1.Style.Add("background-color", "#800000");
                        sub2.Style.Add("background-color", "#800000");
                    }
                }
            }
        }

        protected void dd1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (d1.SelectedIndex == 1)
            {
               nav1.Style.Add("background-color", "#9061e2");
                drop.Style.Add("background-color", "#9061e2");
                A1.Style.Add("background-color", "#9061e2");
                A2.Style.Add("background-color", "#9061e2");
                sub1.Style.Add("background-color", "#9061e2");
                sub2.Style.Add("background-color", "#9061e2");
               
            }
            else if (d1.SelectedIndex == 2)
            {
                nav1.Style.Add("background-color", "#228B22");
                //li1.Style.Add("background-color", "#228B22");
                drop.Style.Add("background-color", "#228B22");
                A1.Style.Add("background-color", "#228B22");
                A2.Style.Add("background-color", "#228B22");
                sub1.Style.Add("background-color", "#228B22");
                sub2.Style.Add("background-color", "#228B22");
            }
            else if (d1.SelectedIndex == 3)
            {
                nav1.Style.Add("background-color", "#800000");
                //li1.Style.Add("background-color", "#800000");
                drop.Style.Add("background-color", "#800000");
                A1.Style.Add("background-color", "#800000");
                A2.Style.Add("background-color", "#800000");
                sub1.Style.Add("background-color", "#800000");
                sub2.Style.Add("background-color", "#800000");
               
            }
            Session["theme"] = d1.SelectedValue;
            Session["selectedindex"] = d1.SelectedIndex;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {

            //HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //HttpContext.Current.Response.Cache.SetNoServerCaching();
            //HttpContext.Current.Response.Cache.SetNoStore();
            Session.Abandon();
            Session.Clear();
            Session["id"] = null; 
            Session.RemoveAll();
            Response.Redirect("authentication.aspx");
        }
        //protected void col(object sender, EventArgs e)
        //{
        //    if (lis.SelectedIndex == 0)
        //    {
        //        nav1.Style.Add("background-color", "purple");
        //    }
        //    else if (lis.SelectedIndex == 1)
        //    {
        //        nav1.Style.Add("background-color", "red");
        //    }
        //    else if (lis.SelectedIndex == 2)
        //    {
        //        nav1.Style.Add("background-color", "green");
        //    }
        //}
     



    }
}