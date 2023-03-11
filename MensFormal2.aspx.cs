using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addMenFormal2_Click(object sender, EventArgs e)
        {
            Session["MenFormal2add"] = "Green Tailored Fit Formal Suit";
            Session["MenFormal2Price"] = "4999";
            Session["MenFormal2Qty"] = MenFormal2Qty.SelectedValue;
            addMenFormal2.Visible = false;
            gotocartMenFormal2.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartMenFormal2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}