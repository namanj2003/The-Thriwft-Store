using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                CustName.Text = Session["userName"].ToString();
            }
            if (Session["userEmail"] != null)
            {
                CustEmail.Text = Session["userEmail"].ToString();
            }

        }
    }
}