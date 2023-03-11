using Microsoft.Ajax.Utilities;
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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadCartValues();
            }
        }

        private void LoadCartValues()
        {
            int grandTotal = 0;
            rbCOD.Visible= false;
            emptyCart.Visible= true;
            shippingAddress.Visible = false;
            shippingCity.Visible = false;
            shippingState.Visible = false;
            shippingPincode.Visible = false;
            shippingMobileNo.Visible = false;
            order1.Visible = false;
            txtShippingAddress.Visible = false;
            txtCity.Visible = false;
            txtState.Visible = false;
            txtPincode.Visible = false;
            txtMobile.Visible = false;



            if (Session["MenTrad3add"] != null && Session["MenTrad3Qty"] != null && Session["MenTrad3Price"] != null)
            {
                LabelAddedProds1.Visible = true;
                LabelAddedProds1.Text = Session["MenTrad3add"].ToString();
                qty1.Visible = true;
                dlAddedProds1.Visible = true;
                dlAddedProds1.SelectedValue = Session["MenTrad3Qty"].ToString();
                price1.Visible = true;
                remove1.Visible = true;
                LabelTotalPrice1.Visible = true;
                LabelTotalPrice1.Text = (int.Parse((string)Session["MenTrad3Qty"]) * int.Parse((string)Session["MenTrad3Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice1.Text);
            }

            if (Session["MenCasual1add"] != null && Session["MenCasual1Qty"] != null && Session["MenCasual1Price"] != null)
            {
                LabelAddedProds2.Visible = true;
                LabelAddedProds2.Text = Session["MenCasual1add"].ToString();
                qty2.Visible = true;
                dlAddedProds2.Visible = true;
                dlAddedProds2.SelectedValue = Session["MenCasual1Qty"].ToString();
                price2.Visible = true;
                remove2.Visible = true;
                LabelTotalPrice2.Visible = true;
                LabelTotalPrice2.Text = (int.Parse((string)Session["MenCasual1Qty"]) * int.Parse((string)Session["MenCasual1Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice2.Text);
            }

            if (Session["MenFormal2add"] != null && Session["MenFormal2Qty"] != null && Session["MenFormal2Price"] != null)
            {
                LabelAddedProds3.Visible = true;
                LabelAddedProds3.Text = Session["MenFormal2add"].ToString();
                qty3.Visible = true;
                dlAddedProds3.Visible = true;
                dlAddedProds3.SelectedValue = Session["MenFormal2Qty"].ToString();
                price3.Visible = true;
                remove3.Visible = true;
                LabelTotalPrice3.Visible = true;
                LabelTotalPrice3.Text = (int.Parse((string)Session["MenFormal2Qty"]) * int.Parse((string)Session["MenFormal2Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice3.Text);
            }

            if (Session["WomenTrad3add"] != null && Session["WomenTrad3Qty"] != null && Session["WomenTrad3Price"] != null)
            {
                LabelAddedProds4.Visible = true;
                LabelAddedProds4.Text = Session["WomenTrad3add"].ToString();
                qty4.Visible = true;
                dlAddedProds4.Visible = true;
                dlAddedProds4.SelectedValue = Session["WomenTrad3Qty"].ToString();
                price4.Visible = true;
                remove4.Visible = true;
                LabelTotalPrice4.Visible = true;
                LabelTotalPrice4.Text = (int.Parse((string)Session["WomenTrad3Qty"]) * int.Parse((string)Session["WomenTrad3Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice4.Text);
            }

            if (Session["WomenWestern2add"] != null && Session["WomenWestern2Qty"] != null && Session["WomenWestern2Price"] != null)
            {
                LabelAddedProds5.Visible = true;
                LabelAddedProds5.Text = Session["WomenWestern2add"].ToString();
                qty5.Visible = true;
                dlAddedProds5.Visible = true;
                dlAddedProds5.SelectedValue = Session["WomenWestern2Qty"].ToString();
                price5.Visible = true;
                remove5.Visible = true;
                LabelTotalPrice5.Visible = true;
                LabelTotalPrice5.Text = (int.Parse((string)Session["WomenWestern2Qty"]) * int.Parse((string)Session["WomenWestern2Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice5.Text);
            }

            if (Session["WomenCasual2add"] != null && Session["WomenCasual2Qty"] != null && Session["WomenCasual2Price"] != null)
            {
                LabelAddedProds6.Visible = true;
                LabelAddedProds6.Text = Session["WomenCasual2add"].ToString();
                qty6.Visible = true;
                dlAddedProds6.Visible = true;
                dlAddedProds6.SelectedValue = Session["WomenCasual2Qty"].ToString();
                price6.Visible = true;
                remove6.Visible = true;
                LabelTotalPrice6.Visible = true;
                LabelTotalPrice6.Text = (int.Parse((string)Session["WomenCasual2Qty"]) * int.Parse((string)Session["WomenCasual2Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice6.Text);
            }

            if (Session["KidGirlWear2add"] != null && Session["KidGirlWear2Qty"] != null && Session["KidGirlWear2Price"] != null)
            {
                LabelAddedProds7.Visible = true;
                LabelAddedProds7.Text = Session["KidGirlWear2add"].ToString();
                qty7.Visible = true;
                dlAddedProds7.Visible = true;
                dlAddedProds7.SelectedValue = Session["KidGirlWear2Qty"].ToString();
                price7.Visible = true;
                remove7.Visible = true;
                LabelTotalPrice7.Visible = true;
                LabelTotalPrice7.Text = (int.Parse((string)Session["KidGirlWear2Qty"]) * int.Parse((string)Session["KidGirlWear2Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice7.Text);
            }

            if (Session["KidGirlWear3add"] != null && Session["KidGirlWear3Qty"] != null && Session["KidGirlWear3Price"] != null)
            {
                LabelAddedProds8.Visible = true;
                LabelAddedProds8.Text = Session["KidGirlWear3add"].ToString();
                qty8.Visible = true;
                dlAddedProds8.Visible = true;
                dlAddedProds8.SelectedValue = Session["KidGirlWear3Qty"].ToString();
                price8.Visible = true;
                remove8.Visible = true;
                LabelTotalPrice8.Visible = true;
                LabelTotalPrice8.Text = (int.Parse((string)Session["KidGirlWear3Qty"]) * int.Parse((string)Session["KidGirlWear3Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice8.Text);
            }

            if (Session["KidBoyWear2add"] != null && Session["KidBoyWear2Qty"] != null && Session["KidBoyWear2Price"] != null)
            {
                LabelAddedProds9.Visible = true;
                LabelAddedProds9.Text = Session["KidBoyWear2add"].ToString();
                qty9.Visible = true;
                dlAddedProds9.Visible = true;
                dlAddedProds9.SelectedValue = Session["KidBoyWear2Qty"].ToString();
                price9.Visible = true;
                remove9.Visible = true;
                LabelTotalPrice9.Visible = true;
                LabelTotalPrice9.Text = (int.Parse((string)Session["KidBoyWear2Qty"]) * int.Parse((string)Session["KidBoyWear2Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice9.Text);
            }

            if (Session["KidBoyWear3add"] != null && Session["KidBoyWear3Qty"] != null && Session["KidBoyWear3Price"] != null)
            {
                LabelAddedProds10.Visible = true;
                LabelAddedProds10.Text = Session["KidBoyWear3add"].ToString();
                qty10.Visible = true;
                dlAddedProds10.Visible = true;
                dlAddedProds10.SelectedValue = Session["KidBoyWear3Qty"].ToString();
                price10.Visible = true;
                remove10.Visible = true;
                LabelTotalPrice10.Visible = true;
                LabelTotalPrice10.Text = (int.Parse((string)Session["KidBoyWear3Qty"]) * int.Parse((string)Session["KidBoyWear3Price"])).ToString();
                shippingAddress.Visible = true;
                shippingCity.Visible = true;
                shippingState.Visible = true;
                shippingPincode.Visible = true;
                shippingMobileNo.Visible = true;
                order1.Visible = true;
                txtShippingAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtPincode.Visible = true;
                txtMobile.Visible = true;
                rbCOD.Visible = true;
                emptyCart.Visible = false;
                grandTotal += int.Parse(LabelTotalPrice10.Text);
            }
            
            if (grandTotal > 0)
            {
                finalBill1.Visible = true;
                finalAmt1.Text = grandTotal.ToString("N2");
            }
            
        }

        protected void Remove1_Click(object sender, EventArgs e)
        {
            
            Session.Remove("MenTrad3add");
            Session.Remove("MenTrad3Qty");
            Session.Remove("MenTrad3Price");
            LabelAddedProds1.Text= " ";
            LabelTotalPrice1.Text= " ";
            dlAddedProds1.Items.Clear();
            Response.Redirect("CartPage.aspx");

        }

        protected void Remove2_Click(object sender, EventArgs e)
        {
            Session.Remove("MenCasual1add");
            Session.Remove("MenCasual1Qty");
            Session.Remove("MenCasual1Price");
            LabelAddedProds2.Text = " ";
            LabelTotalPrice2.Text = " ";
            dlAddedProds2.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove3_Click(object sender, EventArgs e)
        {
            Session.Remove("MenFormal2add");
            Session.Remove("MenFormal2Qty");
            Session.Remove("MenFormal2Price");
            LabelAddedProds3.Text = " ";
            LabelTotalPrice3.Text = " ";
            dlAddedProds3.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove4_Click(object sender, EventArgs e)
        {
            Session.Remove("WomenTrad3add");
            Session.Remove("WomenTrad3Qty");
            Session.Remove("WomenTrad3Price");
            LabelAddedProds4.Text = " ";
            LabelTotalPrice4.Text = " ";
            dlAddedProds4.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove5_Click(object sender, EventArgs e)
        {
            Session.Remove("WomenWestern2add");
            Session.Remove("WomenWestern2Qty");
            Session.Remove("WomenWestern2Price");
            LabelAddedProds5.Text = " ";
            LabelTotalPrice5.Text = " ";
            dlAddedProds5.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }
        protected void Remove6_Click(object sender, EventArgs e)
        {
            Session.Remove("WomenCasual2add");
            Session.Remove("WomenCasual2Qty");
            Session.Remove("WomenCasual2Price");
            LabelAddedProds6.Text = " ";
            LabelTotalPrice6.Text = " ";
            dlAddedProds6.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove7_Click(object sender, EventArgs e)
        {
            Session.Remove("KidGirlWear2add");
            Session.Remove("KidGirlWear2Qty");
            Session.Remove("KidGirlWear2Price");
            LabelAddedProds7.Text = " ";
            LabelTotalPrice7.Text = " ";
            dlAddedProds7.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove8_Click(object sender, EventArgs e)
        {
            Session.Remove("KidGirlWear3add");
            Session.Remove("KidGirlWear3Qty");
            Session.Remove("KidGirlWear3Price");
            LabelAddedProds8.Text = " ";
            LabelTotalPrice8.Text = " ";
            dlAddedProds8.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove9_Click(object sender, EventArgs e)
        {
            Session.Remove("KidBoyWear2add");
            Session.Remove("KidBoyWear2Qty");
            Session.Remove("KidBoyWear2Price");
            LabelAddedProds9.Text = " ";
            LabelTotalPrice9.Text = " ";
            dlAddedProds9.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }

        protected void Remove10_Click(object sender, EventArgs e)
        {
            Session.Remove("KidBoyWear3add");
            Session.Remove("KidBoyWear3Qty");
            Session.Remove("KidBoyWear3Price");
            LabelAddedProds10.Text = " ";
            LabelTotalPrice10.Text = " ";
            dlAddedProds10.Items.Clear();
            Response.Redirect("CartPage.aspx");
        }
        private void PlaceOrder()
        {
            DateTime time = DateTime.Now;
            if (Session["userEmail"] != null)
            {
                SqlConnection shipping = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WebDevApplication3.0\App_Data\ShippingInfo.mdf;Integrated Security=True");
                string prod1 = "Insert into Shipping values('" + LabelAddedProds1.Text + "','" + dlAddedProds1.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds1.SelectedValue) > 0)
                {
                    SqlCommand placeOrder1 = new SqlCommand(prod1, shipping);
                    shipping.Open();
                    placeOrder1.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod2 = "Insert into Shipping values('" + LabelAddedProds2.Text + "','" + dlAddedProds2.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds2.SelectedValue) > 0)
                {
                    SqlCommand placeOrder2 = new SqlCommand(prod2, shipping);
                    shipping.Open();
                    placeOrder2.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }

                string prod3 = "Insert into Shipping values('" + LabelAddedProds3.Text + "','" + dlAddedProds3.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds3.SelectedValue) > 0)
                {
                    SqlCommand placeOrder3 = new SqlCommand(prod3, shipping);
                    shipping.Open();
                    placeOrder3.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod4 = "Insert into Shipping values('" + LabelAddedProds4.Text + "','" + dlAddedProds4.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds4.SelectedValue) > 0)
                {
                    SqlCommand placeOrder4 = new SqlCommand(prod4, shipping);
                    shipping.Open();
                    placeOrder4.ExecuteNonQuery();
                    shipping.Close();

                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod5 = "Insert into Shipping values('" + LabelAddedProds5.Text + "','" + dlAddedProds5.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds5.SelectedValue) > 0)
                {
                    SqlCommand placeOrder5 = new SqlCommand(prod5, shipping);
                    shipping.Open();
                    placeOrder5.ExecuteNonQuery();
                    shipping.Close();

                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod6 = "Insert into Shipping values('" + LabelAddedProds6.Text + "','" + dlAddedProds6.SelectedValue.ToString() + "'," + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "',''" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds6.SelectedValue) > 0)
                {
                    SqlCommand placeOrder6 = new SqlCommand(prod6, shipping);
                    shipping.Open();
                    placeOrder6.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod7 = "Insert into Shipping values('" + LabelAddedProds7.Text + "','" + dlAddedProds7.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds7.SelectedValue) > 0)
                {
                    SqlCommand placeOrder7 = new SqlCommand(prod7, shipping);
                    shipping.Open();
                    placeOrder7.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod8 = "Insert into Shipping values('" + LabelAddedProds8.Text + "','" + dlAddedProds8.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds8.SelectedValue) > 0)
                {
                    SqlCommand placeOrder8 = new SqlCommand(prod8, shipping);
                    shipping.Open();
                    placeOrder8.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod9 = "Insert into Shipping values('" + LabelAddedProds9.Text + "','" + dlAddedProds9.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds9.SelectedValue) > 0)
                {
                    SqlCommand placeOrder9 = new SqlCommand(prod9, shipping);
                    shipping.Open();
                    placeOrder9.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
                string prod10 = "Insert into Shipping values('" + LabelAddedProds10.Text + "','" + dlAddedProds10.SelectedValue.ToString() + "','" + finalAmt1.Text + "','" + Session["userEmail"].ToString() + "','" + time.ToString() + "','" + txtShippingAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "'," + txtPincode.Text + "," + txtMobile.Text + ")";
                if (int.Parse(dlAddedProds10.SelectedValue) > 0)
                {
                    SqlCommand placeOrder10 = new SqlCommand(prod10, shipping);
                    shipping.Open();
                    placeOrder10.ExecuteNonQuery();
                    shipping.Close();
                }
                else
                {
                    Label1.Text = "Quantity Cannot be Empty!!!";
                    Label1.ForeColor = Color.Red;
                }
            }
            else
            {
                Label1.Text = "Login Required to make Purchase";
                Label1.ForeColor = Color.Red;
            }
        }

        protected void order1_Click(object sender, EventArgs e)
        {
            PlaceOrder();
            if (Session["userEmail"] != null)
            {
                Response.Redirect("OrderConfirmPage.aspx");
            }
            

        }
            
        protected void dlAddedProds1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["MenTrad3Qty"] = dlAddedProds1.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["MenCasual1Qty"] = dlAddedProds2.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["MenFormal2Qty"] = dlAddedProds3.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["WomenTrad3Qty"] = dlAddedProds4.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds5_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["WomenWestern2Qty"] = dlAddedProds5.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds6_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["WomenCasual2Qty"] = dlAddedProds6.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds7_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["KidGirlWear2Qty"] = dlAddedProds7.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds8_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["KidGirlWear3Qty"] = dlAddedProds8.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds9_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["KidBoyWear2Qty"] = dlAddedProds9.SelectedValue;

            LoadCartValues();
        }

        protected void dlAddedProds10_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["KidBoyWear3Qty"] = dlAddedProds10.SelectedValue;

            LoadCartValues();
        }
    }
}