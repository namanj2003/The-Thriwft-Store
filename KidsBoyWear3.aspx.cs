using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addKidBoyWear3_Click(object sender, EventArgs e)
        {
            Session["KidBoyWear3add"] = "White Dyed Hoodie and Pyjamas";
            Session["KidBoyWear3Price"] = "899";
            Session["KidBoyWear3Qty"] = KidBoyWear3Qty.SelectedValue;
            addKidBoyWear3.Visible = false;
            gotocartKidBoyWear3.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartKidBoyWear3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}