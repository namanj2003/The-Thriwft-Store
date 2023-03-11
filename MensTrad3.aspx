<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MensTrad3.aspx.cs" Inherits="WebDevApplication3._0.WebForm3" %>

<asp:Content ID="MensTradContent1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Men's Wear/Traditional_3.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Yellow Sleeveless Designer Waistcoat</b></p>
                    <p>Complete your ethnic collection with this printed waistcoat is designed with a band collar, button-down silhouette, and sleeveless construction. Team it with a kurta and pyjama for a traditional look.</p>
                    <p>Type : WaistCoat Kurta</p>
                    <p>Design : Florals & Solid Kurta</p>
                    <p>Style : Traditional</p>
                    <p>Sleeve Length : Full Sleeves Kurta and Sleeveless Coat</p>
                    <p>Fabric : Cotton</p>
                    <p>Fit : Regular</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Model Wears : Size M, has Height 6'0" and Chest 38"</p>

                    Price: Rs <asp:Label ID="mentrad3Price" runat="server" Text="2999"></asp:Label>
                    <br />
                    <asp:DropDownList ID="MenTrad3Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addMenTrad3" runat="server" Text="Add to Cart" OnClick="addMenTrad3_Click" />
                    <asp:Button ID="gotocartMenTrad3" runat="server" Text="Go To Cart" OnClick="gotocartMenTrad3_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
