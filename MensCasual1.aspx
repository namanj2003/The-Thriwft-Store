<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MensCasual1.aspx.cs" Inherits="WebDevApplication3._0.MenCasual1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Men's Wear/Casual_1.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Green & White Printed Casual Shirt</b></p>
                    <p>Complete your collection with this casual shirt, which has a spread collar, short sleeves, button placket, curved hem, and 1 patch pocket</p>
                    <p>Type : Shirts</p>
                    <p>Design : Floral</p>
                    <p>Style : Casual</p>
                    <p>Sleeve Length : Short Sleeves</p>
                    <p>Fabric : Cotton</p>
                    <p>Fit : Regular</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Model Wears : Size M, has Height 6'0" and Chest 38"</p>

                    Price: Rs <asp:Label ID="menCasual1Price" runat="server" Text="999"></asp:Label>
                    <br />
                    <asp:DropDownList ID="MenCasual1Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addMenCasual1" runat="server" Text="Add to Cart" OnClick="addMenCasual1_Click" />
                    <asp:Button ID="gotocartMenCasual1" runat="server" Text="Go To Cart" OnClick="gotocartMenCasual1_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
