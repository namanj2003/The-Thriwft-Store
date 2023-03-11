using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addKidGirlWear3_Click(object sender, EventArgs e)
        {
            Session["KidGirlWear3add"] = "Pink Printed Sleeveless Dress";
            Session["KidGirlWear3Price"] = "899";
            Session["KidGirlWear3Qty"] = KidGirlWear3Qty.SelectedValue;
            addKidGirlWear3.Visible = false;
            gotocartKidGirlWear3.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartKidGirlWear3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}