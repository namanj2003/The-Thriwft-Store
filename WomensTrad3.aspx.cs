using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addWomenTrad3_Click(object sender, EventArgs e)
        {
            Session["WomenTrad3add"] = "Black Banarasi Designer Saree";
            Session["WomenTrad3Price"] = "2799";
            Session["WomenTrad3Qty"] = WomenTrad3Qty.SelectedValue;
            addWomenTrad3.Visible = false;
            gotocartWomenTrad3.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartWomenTrad3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}