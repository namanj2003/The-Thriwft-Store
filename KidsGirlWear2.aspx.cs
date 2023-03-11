using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addKidGirlWear2_Click(object sender, EventArgs e)
        {
            Session["KidGirlWear2add"] = "Green Dungaree Dress";
            Session["KidGirlWear2Price"] = "799";
            Session["KidGirlWear2Qty"] = KidGirlWear2Qty.SelectedValue;
            addKidGirlWear2.Visible = false;
            gotocartKidGirlWear2.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartKidGirlWear2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}