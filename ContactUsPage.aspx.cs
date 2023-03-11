using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevApplication3._0
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection contact = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WebDevApplication3.0\App_Data\contactUs.mdf;Integrated Security=True");
            string submit = "Insert into UserContactUs values('" + UserContactUsEmail.Text + "','" + UserQuery1.Text + "')";
            SqlCommand SubmitQuery = new SqlCommand(submit, contact);
            contact.Open();
            int upload = SubmitQuery.ExecuteNonQuery();
            contact.Close();
            if(upload > 0)
            {
                QueryReceived.Text = "Thank's for Writing to us. We'll get back to you shortly.";
                UserContactUsEmail.Text = " ";
                UserQuery1.Text = " ";   
            }
        }
    }
}