<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="WomensWestern2.aspx.cs" Inherits="WebDevApplication3._0.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Women's Wear/Western_2.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Ice Blue Denim One-Piece</b></p>
                    <p>Make a style quotient with this A-line dress is designed with a solid surface, square neckline, and three-quarter sleeves.</p>
                    <p>Type : A-Line Dress</p>
                    <p>Design : Solid</p>
                    <p>Neckline : Square Neck</p>
                    <p>Style : Casual</p>
                    <p>Length : Midi</p>
                    <p>Sleeve Length : 3/4th Sleeves</p>
                    <p>Fabric : Cotton</p>
                    <p>Care Instructions : Machine wash</p>
                    <p>Model Wears : Size S, has Height 5'7",Chest 33",and Waist 28</p>





                    Price: Rs<asp:Label ID="WomenWestern2Price" runat="server" Text="1999"></asp:Label>
                    <br />
                    <asp:DropDownList ID="WomenWestern2Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addWomenWestern2" runat="server" Text="Add to Cart" OnClick="addWomenWestern2_Click" />
                    <asp:Button ID="gotocartWomenWestern2" runat="server" Text="Go To Cart" OnClick="gotocartWomenWestern2_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
