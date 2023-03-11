using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addMenTrad3_Click(object sender, EventArgs e)
        {
            Session["MenTrad3add"] = "Yellow Sleeveless Designer Waistcoat";
            Session["MenTrad3Price"] = "2999";
            Session["MenTrad3Qty"] = MenTrad3Qty.SelectedValue;
            addMenTrad3.Visible = false;
            gotocartMenTrad3.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartMenTrad3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}