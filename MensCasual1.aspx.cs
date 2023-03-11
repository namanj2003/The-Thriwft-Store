using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class MenCasual1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void addMenCasual1_Click(object sender, EventArgs e)
        {
            Session["MenCasual1add"] = "Green & White Printed Casual Shirt";
            Session["MenCasual1Price"] = "999";
            Session["MenCasual1Qty"] = MenCasual1Qty.SelectedValue;
            addMenCasual1.Visible = false;
            gotocartMenCasual1.Visible = true;
            lblAddedMTC.Text = "Added to Cart!!";
            lblAddedMTC.ForeColor = System.Drawing.Color.Green;
        }

        protected void gotocartMenCasual1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }
    }
}