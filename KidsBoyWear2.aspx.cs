using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addKidBoyWear2_Click(object sender, EventArgs e)
        {
            Session["KidBoyWear2add"] = "Red And Black T-shirt and Trousers Set";
            Session["KidBoyWear2Price"] = "749";
            Session["KidBoyWear2Qty"] = KidBoyWear2Qty.SelectedValue;
            addKidBoyWear2.Visible = false;
            gotocartKidBoyWear2.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartKidBoyWear2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}