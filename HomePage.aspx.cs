using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevAssignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userName"]!=null && Session["userEmail"]!=null && Session["userMobileNo"] != null)
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

        

        protected void menProd_Click(object sender, EventArgs e)
        {
            trendingProducts.Visible= false;

            MenTraditional.Visible= true;
            MenCasual.Visible= true;
            MenFormal.Visible= true;

            WomenCasual.Visible = false;
            WomenTraditional.Visible = false;
            WomenWestern.Visible = false;

            KidsClothes1.Visible = false;
            GirlClothes.Visible = false;
            BoyClothes.Visible = false;
        }

        protected void womenProd_Click(object sender, EventArgs e)
        {
            trendingProducts.Visible = false; 

            MenTraditional.Visible = false;
            MenCasual.Visible = false;
            MenFormal.Visible = false;

            WomenCasual.Visible = true;
            WomenTraditional.Visible = true;
            WomenWestern.Visible = true;

            KidsClothes1.Visible = false;
            GirlClothes.Visible = false;
            BoyClothes.Visible = false;
        }

        protected void kidProd_Click(object sender, EventArgs e)
        {
            trendingProducts.Visible = false; 
            
            MenTraditional.Visible = false;
            MenCasual.Visible = false;
            MenFormal.Visible = false;

            WomenCasual.Visible = false;
            WomenTraditional.Visible = false;
            WomenWestern.Visible = false;

            KidsClothes1.Visible = true;
            GirlClothes.Visible = false;
            BoyClothes.Visible = false;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (ProductsMenu.SelectedValue=="FestiveMen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = true;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;

                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }
            if (ProductsMenu.SelectedValue == "FormalMen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = true;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;

                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }
            if (ProductsMenu.SelectedValue == "CasualMen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = true;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;


                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }

            if(ProductsMenu.SelectedValue== "FestiveWomen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = true;
                WomenWestern.Visible = false;


                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }

            if (ProductsMenu.SelectedValue == "WesternWomen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = true;


                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }

            if (ProductsMenu.SelectedValue == "CasualWomen1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = true;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;


                KidsClothes1.Visible = false;
                GirlClothes.Visible = false;
                BoyClothes.Visible = false;
            }

            if (ProductsMenu.SelectedValue == "Boy1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;

                KidsClothes1.Visible = false;
                BoyClothes.Visible = true;
                GirlClothes.Visible = false;
            }
            if (ProductsMenu.SelectedValue == "Girl1")
            {
                trendingProducts.Visible = false; 
                
                MenTraditional.Visible = false;
                MenCasual.Visible = false;
                MenFormal.Visible = false;

                WomenCasual.Visible = false;
                WomenTraditional.Visible = false;
                WomenWestern.Visible = false;

                KidsClothes1.Visible = false;
                BoyClothes.Visible = false;
                GirlClothes.Visible = true;
            }
            
        }

        protected void LnkHome1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
            MenTraditional.Visible = false;
            MenCasual.Visible = false;
            MenFormal.Visible = false;

            WomenCasual.Visible = false;
            WomenTraditional.Visible = false;
            WomenWestern.Visible = false;

            KidsClothes1.Visible = false;
            GirlClothes.Visible = false;
            BoyClothes.Visible = false;
        }

        protected void cartImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }

        protected void contact1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUsPage.aspx");
        }

        protected void logoImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }


        protected void imgMenTrad3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MensTrad3.aspx");
        }
        protected void imgMenCasual1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MensCasual1.aspx");
        }

        protected void imgMenFormal2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MensFormal2.aspx");
        }

        protected void imgWomenTrad3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("WomensTrad3.aspx");
        }
        protected void imgWomenCasual2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("WomensCasual2.aspx");
        }

        protected void imgWomenWestern2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("WomensWestern2.aspx");
        }

        protected void imgGirlCloth2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsGirlWear2.aspx");
        }

        protected void imgGirlCloth3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsGirlWear3.aspx");
        }

        protected void imgBoyCloth2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsBoyWear2.aspx");
        }

        protected void imgBoyCloth3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsBoyWear3.aspx");
        }

        protected void imgGirlClothes2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsGirlWear2.aspx");
        }

        protected void imgGirlClothes3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsGirlWear3.aspx");
        }

        protected void imgBoyClothes2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsBoyWear2.aspx");
        }

        protected void imgBoyClothes3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsBoyWear3.aspx");
        }

        protected void TrendingProd3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsGirlWear3.aspx");
        }

        protected void TrendingProd4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KidsBoyWear3.aspx");
        }

        protected void MyAccount_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Text == "LogOut")
            {
                Session.Clear();
                Response.Redirect("LoginPage.aspx");
            }
            if (e.Item.Text == "Login")
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void MyOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrders");
        }
    }
}