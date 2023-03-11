using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addWomenCasual2_Click(object sender, EventArgs e)
        {
            Session["WomenCasual2add"] = "Navy Blue A-Line Top";
            Session["WomenCasual2Price"] = "1799";
            Session["WomenCasual2Qty"] = WomenCasual2Qty.SelectedValue;
            addWomenCasual2.Visible = false;
            gotocartWomenCasual2.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartWomenCasual2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}