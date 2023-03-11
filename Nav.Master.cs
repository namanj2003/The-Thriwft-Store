using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevAssignment2._0
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null && Session["userEmail"] != null && Session["userMobileNo"] != null)
            {
                MyAccount.Items[0].ChildItems[0].Text = Session["userName"].ToString();
                MyAccount.Items[0].ChildItems[1].Text = Session["userEmail"].ToString();
                MyAccount.Items[0].ChildItems[2].Text = Session["userMobileNo"].ToString();
            }
            else
            {
                MyAccount.Items[0].ChildItems[3].Text = "Login";


            }
        }

        protected void cartImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }

        protected void LnkHome1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void contact_Cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUsPage.aspx");
        }

        protected void MyOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrders.aspx");
        }


        protected void MyAccount_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}