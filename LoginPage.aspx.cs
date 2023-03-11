using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevAssignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void loginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WebDevApplication3.0\App_Data\Database1.mdf;Integrated Security=True");
            string loginUser = "Select count(*) from UserInfo where EmailID='" + txtLoginEmail.Text + "' AND Password='" + txtLoginPassword.Text + "'";
            SqlCommand loginValid = new SqlCommand(loginUser, con);
            con.Open();
            int valid = Convert.ToInt32(loginValid.ExecuteScalar().ToString());
            con.Close();
            if (valid == 1)
            {
                Session["userEmail"]=txtLoginEmail.Text;

                string name = "Select Name from UserInfo where EmailID='" + txtLoginEmail.Text + "'";
                SqlCommand getUsername = new SqlCommand(name, con);
                con.Open() ;
                string username = getUsername.ExecuteScalar().ToString();
                con.Close();
                Session["userName"] = username;

                string mobileno = "Select MobileNo from UserInfo where EmailID='" + txtLoginEmail.Text + "'";
                SqlCommand getMobileNo = new SqlCommand(mobileno, con);
                con.Open();
                string mobileNo = getMobileNo.ExecuteScalar().ToString();
                con.Close();
                Session["userMobileno"]=mobileNo;

                Response.Redirect("HomePage.aspx");
            }
            else
            {
                loginError.Text = "Invaid Credentials";
                loginError.ForeColor = Color.Red;
            }

        }

        protected void takeToCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }
    }
}