<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebDevAssignment.WebForm3" %>

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">



    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/Bootstrap/bootstrap.min.css" />
    <script src="/Bootstrap/jquery.min.js"></script>
    <script src="/Bootstrap/bootstrap.min.js"></script>
    <title><%: Page.Title %>- The Thriwft Store</title>
    <link href="images/mylogo-transformed.png" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="WebsiteStyling.css" />
    <style type="text/css">

        .homeTable2 {
            width: 490px;
            height: 87px;
            margin-left: 20px;
            text-align: center;
            font-weight: bold;
            color: #7C6F57;
            font-size: medium;
            font-family: Arial;
            background-color: #1E212D;
        }
        td.ht1{
            width:80px;
            text-align:center; 
            padding-block:auto; 
            padding-top:10px;
            padding-bottom:10px;
            text-align:center;
            vertical-align:middle;
        }

        td.ht2{
            width:100px;
            text-align:center; 
            padding-block:auto; 
            padding-top:10px;
            padding-bottom:10px;
            text-align:center;
            vertical-align:middle;
        }
        td.ht3{
            width:80px;
            text-align:center; 
            padding-block:auto; 
            padding-top:10px;
            padding-bottom:10px;
            text-align:center;
            vertical-align:middle;
        }
        /*td.homeTable{
            padding:5px;
            margin:100%;

        }*/
        table.Products {
            margin-left: auto;
            margin-right: auto;
            padding: 2px;
            font-family: Arial;
            font-size: medium;
            font-weight: bold;
            text-align: center;
            table-layout: auto;
        }
        td.Border {
            padding: 20px;
            border: 2px solid #808080;
        }
        .item active{
            width:100%;
            height:200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav style="background-color:#1E212D;" class="text-left">
         <asp:Image ID="logoImg" runat="server" Height="88px" Width="140px" ImageAlign="Left" AlternateText="Logo Here" ImageUrl="~\images\mylogo-transformed.png" style="margin-left:10px; margin-right:10px;" />
            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Cart-img" Height="85px" Width="65px" ImageAlign="Right" ImageUrl="~/images/cart-logo.png"   style="margin-left:10px; margin-right:10px; padding-top:20px; padding-bottom:20px;" OnClick="cartImg_Click" />
             
            
            <table class="homeTable2">
                <tr>
                    <td class="ht1">
                        <asp:LinkButton ID="LnkHome_Cart" runat="server" Text="Home" OnClick="LnkHome1_Click" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#7C6F57"></asp:LinkButton>
            
                    </td>
                    <td class="ht3">
                        <asp:Menu ID="ProductsMenu" runat="server" OnMenuItemClick="Menu1_MenuItemClick" BackColor="#1E212D" Font-Names="Arial" Font-Size="Medium" ForeColor="#7C6F57" Orientation="Horizontal" Font-Bold="True" RenderingMode="List" StaticEnableDefaultPopOutImage="False" Width="75px">
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <DynamicItemTemplate>
                                <%# Eval("Text") %>
                            </DynamicItemTemplate>
                            <Items>
                                <asp:MenuItem Text="Products" Value="ProductsMenu1">
                                    <asp:MenuItem Text="Men's Wear" Value="MenMenu1">

                                        <asp:MenuItem Text="Ethnic Wear" Value="FestiveMen1"></asp:MenuItem>
                                        <asp:MenuItem Text="Formal Wear" Value="FormalMen1"></asp:MenuItem>
                                        <asp:MenuItem Text="Casual Friday's ;)" Value="CasualMen1"></asp:MenuItem>

                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Women's Wear" Value="WomenMenu1">
                                        <asp:MenuItem Text="Ethnic Wear" Value="FestiveWomen1"></asp:MenuItem>
                                        <asp:MenuItem Text="Western Wear" Value="WesternWomen1"></asp:MenuItem>
                                        <asp:MenuItem Text="Casual Wear" Value="CasualWomen1"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Kid's Wear" Value="KidMenu1">
                                        <asp:MenuItem Text="Boy's Wear" Value="Boy1"></asp:MenuItem>
                                        <asp:MenuItem Text="Girl's Wear" Value="Girl1"></asp:MenuItem>
                                    </asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                        </asp:Menu>
                    </td>
                     <td class="ht2">
                        <asp:LinkButton ID="contact_Cart" runat="server" Text="Contact US" OnClick="contact1_Click" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#7C6F57"></asp:LinkButton>
                    </td>
                    <td class="ht2">
                         <asp:Menu ID="MyAccount" runat="server" BackColor="#1E212D" Font-Names="Arial" Font-Size="Medium" ForeColor="#7C6F57" Orientation="Horizontal" Font-Bold="True" RenderingMode="Table" StaticEnableDefaultPopOutImage="False" StaticPopOutImageTextFormatString="" OnMenuItemClick="MyAccount_MenuItemClick" Width="100px">
                            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#F7F6F3" />
                            <DynamicSelectedStyle BackColor="#5D7B9D" />
                            <DynamicItemTemplate>
                                <%# Eval("Text") %>
                            </DynamicItemTemplate>
                            <Items>
                                <asp:MenuItem Text="My Account" Value="MyAccount">
                                    <asp:MenuItem Text="Name" Value="New Item"></asp:MenuItem>
                                    <asp:MenuItem Text="Email" Value="UserEmail1"></asp:MenuItem>
                                    <asp:MenuItem Text="Mobile No." Value="Mobile No."></asp:MenuItem>
                                    <asp:MenuItem Text="LogOut" Value="LogOut"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem></asp:MenuItem>
                            </Items>
                        </asp:Menu>
                    </td>
                    <td class="ht1">
                        <asp:LinkButton ID="MyOrders" runat="server" Text="My Orders" OnClick="MyOrders_Click" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#7C6F57"></asp:LinkButton>
                    </td>
                     </tr>
                
            </table>    
            </nav>

        <div>
            <table style="text-align: center; position: center; margin: auto; margin-top: 10px; margin-bottom: 10px">
                <tr style="font-family: Arial; font-size: large; color: #800000; text-align: center; padding-top: 20px; padding-bottom: 20px; margin: auto; table-layout: inherit; border-spacing: 50pt;">
                    <td style="padding-left: 30pt; padding-right: 30pt; text-align: center;">
                        <asp:LinkButton ID="menProd" runat="server" Text="Men's Wear" OnClick="menProd_Click"></asp:LinkButton>
                    </td>
                    <td style="padding-left: 30pt; padding-right: 30pt; text-align: center">
                        <asp:LinkButton ID="womenProd" runat="server" Text="Women's Wear" OnClick="womenProd_Click"></asp:LinkButton>
                    </td>
                    <td style="padding-left: 30pt; padding-right: 30pt; text-align: center">
                        <asp:LinkButton ID="kidProd" runat="server" Text="Kids's Wear" OnClick="kidProd_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>

        </div>

        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" style="margin-right: 0px;">
                <div class="item active">
                    <img src="images/winter_sale_banner.jpg" alt="Winter Sale" style="width:100%; height:200px;">
                </div>

                <div class="item">
                    <img src="images/valentine_sale_banner.jpg" alt="Valentines Sale" style="width:100%; height:200px;">
                </div>

                <div class="item">
                    <img src="images/offer_banner.jpg" alt="Offers" style="width:100%; height:200px;">
                </div>

            </div>

            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br />
        <div>
            <table id="trendingProducts" runat="server" class="Products" visible="True">
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Trending1" runat="server" Text="Trending Now🔥" Font-Bold="True" Font-Names="Arial" Style="text-align: center;"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td runat="server" class="Border">
                        <asp:Image ID="TrendingProd1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Formal_3.png" AlternateText="Men's Formal Wear 3" Height="346px" Width="325px" />
                        <br />
                        <br />
                        <asp:Label ID="lblTrendingProd1" runat="server" Text="Navy Blue Checked Slim-Fit Formal Suit"></asp:Label>
                        <br />
                        <asp:Label ID="SoldOut21" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                    </td>
                    <td runat="server" class="Border">
                        <asp:Image ID="TrendingProd2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Western_1.png" AlternateText="Women's Western Wear 1" Height="346px" Width="325px" />
                        <br />
                        <br />
                        <asp:Label ID="lblTrendingProd2" runat="server" Text="Off-White Ethnic Dress"></asp:Label>
                        <br />
                        <asp:Label ID="SoldOut22" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                    </td>
                    <td runat="server" class="Border">
                        <asp:ImageButton ID="TrendingProd3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_3.png" AlternateText="Kid's Girls Wear 3" Height="346px" Width="325px" ToolTip="Pink Printed Sleeveless Dress" OnClick="TrendingProd3_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblTrendingProd3" runat="server" Text="Pink Printed Sleeveless Dress"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td runat="server" class="Border">
                        <asp:ImageButton ID="TrendingProd4" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_3.png" AlternateText="Kid's Boys Wear 3" Height="346px" Width="325px" OnClick="TrendingProd4_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblTrendingProd4" runat="server" Text="White Dyed Hoodie and Pyjamas" ToolTip="White Dyed Hoodie and Pyjamas"></asp:Label>
                        <br />
                        <br>
                    </td>
                </tr>
            </table>
            <div>
                <table id="MenTraditional" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenTrad1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Traditional_1.png" AlternateText="Men's Festive Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenTrad1" runat="server" Text="Purple Solid Short Kurta"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut1" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>

                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenTrad2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Traditional_2.png" AlternateText="Men's Festive Wear 2" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenTrad2" runat="server" Text="Off-White Striped Kurta"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut2" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgMenTrad3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Traditional_3.png" AlternateText="Men's Festive Wear 3" Height="376px" Width="345px" OnClick="imgMenTrad3_Click" ToolTip="Yellow Sleeveless Designer Waistcoat" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenTrad3" runat="server" Text="Yellow Sleeveless Designer Waistcoat"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table id="MenCasual" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgMenCasual1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Casual_1.png" AlternateText="Men's Casual Wear 1" Height="376px" Width="345px" ToolTip="Green &amp; White Printed Casual Shirt" OnClick="imgMenCasual1_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenCasual1" runat="server" Text="Green & White Printed Casual Shirt"></asp:Label>
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenCasual2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Casual_2.png" AlternateText="Men's Casual Wear 2" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenCasual2" runat="server" Text="Green Solid Hooded Sweatshirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut3" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenCasual3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Casual_3.png" AlternateText="Men's Casual Wear 3" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenCasual3" runat="server" Text="Red Checked Casual Shirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut4" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table id="MenFormal" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenFormal1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Formal_1.png" AlternateText="Men's Formal Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenFormal1" runat="server" Text="Black Solid Formal Shirt "></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut5" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgMenFormal2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Formal_2.png" AlternateText="Men's Formal Wear 2" Height="376px" Width="345px" ToolTip="Green Tailored Fit Formal Suit" OnClick="imgMenFormal2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenFormal2" runat="server" Text="Green Tailored Fit Formal Suit"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgMenFormal3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Men's Wear/Formal_3.png" AlternateText="Men's Formal Wear 3" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgMenFormal3" runat="server" Text="Navy Blue Checked Slim-Fit Formal Suit"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut6" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table id="WomenTraditional" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenTrad1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Traditional_1.png" AlternateText="Women's Festive Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenTrad1" runat="server" Text="Yellow Embellished Saree"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut7" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenTrad2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Traditional_2.png" AlternateText="Women's Festive Wear 2" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenTrad2" runat="server" Text="Off-White A-Line Kurti"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut8" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgWomenTrad3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Traditional_3.png" AlternateText="Women's Festive Wear 3" Height="376px" Width="345px" ToolTip="Black Banarasi Designer Saree" OnClick="imgWomenTrad3_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenTrad3" runat="server" Text="Black Banarasi Designer Saree"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table id="WomenWestern" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenWestern1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Western_1.png" AlternateText="Women's Western Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenWestern1" runat="server" Text="Off-White Ethnic Dress"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut9" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgWomenWestern2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Western_2.png" AlternateText="Women's Western Wear 2" Height="376px" Width="345px" ToolTip="Ice Blue Denim One-Piece" OnClick="imgWomenWestern2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenWestern2" runat="server" Text="Ice Blue Denim One-Piece"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenWestern3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Western_3.png" AlternateText="Women's Western Wear 3" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="LBLimgWomenWestern3" runat="server" Text="Brown Floral Dress"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut10" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table id="WomenCasual" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenCasual1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Casual_1.png" AlternateText="Women's Casual Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenCasual1" runat="server" Text="Red Regular Fit Tunic"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut11" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgWomenCasual2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Casual_2.png" AlternateText="Women's Casual Wear 2" Height="376px" Width="345px" ToolTip="Navy Blue A-Line Top" OnClick="imgWomenCasual2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenCasual2" runat="server" Text="Navy Blue A-Line Top" ToolTip="Navy Blue A-Line Top"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgWomenCasual3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Women's Wear/Casual_3.png" AlternateText="Women's Casual Wear 3" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgWomenCasual3" runat="server" Text="Off-White Self-Design A-Line Top"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut12" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table id="KidsClothes1" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgGirlCloth1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_1.png" AlternateText="Kid's Girls Wear 1" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlCloth1" runat="server" Text="Red Patterned Flared Skirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut13" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgGirlCloth2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_2.png" AlternateText="Kid's Girls Wear 2" Height="376px" Width="345px" ToolTip="Green Dungaree Dress" OnClick="imgGirlCloth2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlCloth2" runat="server" Text="Green Dungaree Dress"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgGirlCloth3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_3.png" AlternateText="Kid's Girls Wear 3" Height="376px" Width="345px" ToolTip="Pink Printed Sleeveless Dress" OnClick="imgGirlCloth3_Click" />

                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlCloth3" runat="server" Text="Pink Printed Sleeveless Dress"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgGirlCloth4" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_4.png" AlternateText="Kid's Girls Wear 4" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlCloth4" runat="server" Text="Brown Soft Cotton Skirt"></asp:Label>
                            <<br />
                            <asp:Label ID="SoldOut14" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgBoyCloth1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_1.png" AlternateText="Kid's Boys Wear 1" Height="376px" Width="345px" ToolTip="Black Long-sleeved Printed T-shirt" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyCloth1" runat="server" Text="Black Long-sleeved Printed T-shirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut15" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgBoyCloth2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_2.png" AlternateText="Kid's Boys Wear 2" Height="376px" Width="345px" OnClick="imgBoyCloth2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyCloth2" runat="server" Text="Red And Black T-shirt and Trousers Set"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgBoyCloth3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_3.png" AlternateText="Kid's Boys Wear 3" Height="376px" Width="345px" ToolTip="White Dyed Hoodie and Pyjamas" OnClick="imgBoyCloth3_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyCloth3" runat="server" Text="White Dyed Hoodie and Pyjamas"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgBoyCloth4" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_4.png" AlternateText="Kid's Boys Wear 4" Height="376px" Width="345px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyCloth4" runat="server" Text="White Printed Mickey Mouse T-shirt"></asp:Label>
                            <br />
                            <asp:Label ID="Soldout16" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table id="GirlClothes" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgGirlClothes1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_1.png" AlternateText="Kid's Girls Wear 1" Height="346px" Width="325px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlClothes1" runat="server" Text="Red Patterned Flared Skirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut17" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgGirlClothes2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_2.png" AlternateText="Kid's Girls Wear 2" Height="346px" Width="325px" ToolTip="Green Dungaree Dress" OnClick="imgGirlClothes2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlClothes2" runat="server" Text="Green Dungaree Dress"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgGirlClothes3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_3.png" AlternateText="Kid's Girls Wear 3" Height="346px" Width="325px" ToolTip="Pink Printed Sleeveless Dress" OnClick="imgGirlClothes3_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlClothes3" runat="server" Text="Pink Printed Sleeveless Dress"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:Image ID="imgGirlClothes4" runat="server" ImageAlign="NotSet" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_4.png" AlternateText="Kid's Girls Wear 4" Height="346px" Width="325px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgGirlClothes4" runat="server" Text="Brown Soft Cotton Skirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut18" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table id="BoyClothes" runat="server" class="Products" visible="False">
                    <tr runat="server">
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgBoyClothes1" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_1.png" AlternateText="Kid's Boys Wear 1" Height="346px" Width="325px" ToolTip="Black Long-sleeved Printed T-shirt" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyClothes1" runat="server" Text="Black Long-sleeved Printed T-shirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut19" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                            
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgBoyClothes2" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_2.png" AlternateText="Kid's Boys Wear 2" Height="346px" Width="325px" OnClick="imgBoyClothes2_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyClothes2" runat="server" Text="Red And Black T-shirt and Trousers Set"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:ImageButton ID="imgBoyClothes3" runat="server" ImageAlign="Middle" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_3.png" AlternateText="Kid's Boys Wear 3" Height="346px" Width="325px" ToolTip="White Dyed Hoodie and Pyjamas" OnClick="imgBoyClothes3_Click" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoyClothes3" runat="server" Text="White Dyed Hoodie and Pyjamas"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td runat="server" class="Border">
                            <asp:Image ID="imgBoysClothes4" runat="server" ImageAlign="NotSet" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_4.png" AlternateText="Kid's Boys Wear 4" Height="346px" Width="325px" />
                            <br />
                            <br />
                            <asp:Label ID="lblimgBoysClothes4" runat="server" Text="White Printed Mickey Mouse T-shirt"></asp:Label>
                            <br />
                            <asp:Label ID="SoldOut20" runat="server" Text="(Sold Out)" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <footer class="footer">

            <%# Eval("Text") %>
            <p style="margin: 0px; padding: 5px;">&copy; <%# Eval("Text") %>- The Thriwft Store</p>

        </footer>
    </form>
</body>
</html>
    </html>
