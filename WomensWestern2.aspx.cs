using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addWomenWestern2_Click(object sender, EventArgs e)
        {
            Session["WomenWestern2add"] = "Ice Blue Denim One-Piece";
            Session["WomenWestern2Price"] = "1999";
            Session["WomenWestern2Qty"] = WomenWestern2Qty.SelectedValue;
            addWomenWestern2.Visible = false;
            gotocartWomenWestern2.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartWomenWestern2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}