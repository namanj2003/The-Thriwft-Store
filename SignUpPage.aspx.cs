using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevAssignment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WebDevApplication3.0\App_Data\Database1.mdf;Integrated Security=True");

            string insertdata = "Insert into UserInfo values('" + TxtName1.Text + "','" + TxtEmail1.Text + "','" + TxtPassword1.Text + "'," + TxtMobile1.Text + ")";
            string checkuser = "Select count(*) From UserInfo where EmailID='" + TxtEmail1.Text + "'";
            SqlCommand CheckData = new SqlCommand(checkuser, con);
            con.Open();
            int check = Convert.ToInt32(CheckData.ExecuteScalar().ToString());
            con.Close();
            if (check == 1)
            {
                
                StatusBox1.Text = "Account Already Exists With This Email!!!";
                StatusBox1.ForeColor=Color.Red;
                TxtName1.Text = " ";
                TxtEmail1.Text = " ";
                TxtPassword1.Text = " ";
                TxtMobile1.Text = " ";
                
                


            }
            else
            {
                SqlCommand sql1 = new SqlCommand(insertdata, con);
                con.Open();
                int i = sql1.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    StatusBox1.Text = "Account Created Successfully!!!";
                    StatusBox1.ForeColor = Color.Green;
                    TxtName1.Text = " ";
                    TxtEmail1.Text = " ";  
                    TxtPassword1.Text = " ";
                    TxtMobile1.Text = " "; 
                }
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void Reset1_Click(object sender, EventArgs e)
        {

            TxtName1.Text = " ";
            TxtEmail1.Text = " ";
            TxtPassword1.Text = " ";
            TxtConfPassword1.Text = " ";
            TxtMobile1.Text = " ";
            
            //EmailValid1.ErrorMessage = " "
            ////EmailValid2.ErrorMessage = " ";
            //PasswordValid1.ErrorMessage = " ";
            //ConfPasswordValidator1.ErrorMessage = " ";
            //ConfPasswordValidator2.ErrorMessage = " ";
            //MobileValidator1.ErrorMessage = " ";


        }
    }
}