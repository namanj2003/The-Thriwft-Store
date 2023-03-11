<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="KidsBoyWear2.aspx.cs" Inherits="WebDevApplication3._0.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_2.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Red And Black T-shirt and Trousers Set</b></p>
                    <p>This clothing set consists of printed T-shirt ,which has a round neck, long sleeves & a solid trousers ,which has a slip-on closure</p>
                    <p>Type : Trousers & T-Shirt</p>
                    <p>Design : Plain and Back Design</p>
                    <p>Style : Casual Western Wear</p>
                    <p>Sleeve Length : Full Sleeves</p>
                    <p>Fabric : Cotton Blend</p>
                    <p>Fit : Regular</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Age: 8-9yrs</p>


                    Price: Rs <asp:Label ID="KidBoyWear2Price" runat="server" Text="749"></asp:Label>
                    <br />
                    <asp:DropDownList ID="KidBoyWear2Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addKidBoyWear2" runat="server" Text="Add to Cart" OnClick="addKidBoyWear2_Click" />
                    <asp:Button ID="gotocartKidBoyWear2" runat="server" Text="Go To Cart" OnClick="gotocartKidBoyWear2_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
