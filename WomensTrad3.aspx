<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="WomensTrad3.aspx.cs" Inherits="WebDevApplication3._0.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Women's Wear/Traditional_3.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Black Banarasi Designer Saree</b></p>
                    <p>Complete your Ethnic collection with this Black banarasi saree Floral woven design saree with woven design border</p>
                    <p>Length: 5.5 metres plus 0.8 metre blouse piece</p>
                    <p>Width: 1.06 metres (approx.)</p>
                    <p>Saree & Blouse Fabric: Linen Blend</p>
                    <p>Type: Banarasi</p>
                    <p>Design: Print or Pattern Type Floral</p>
                    <p>Wash Care: Dry Clean</p>
                    <p>Style : Traditional</p>



                    Price: Rs <asp:Label ID="WomenTrad3Price" runat="server" Text="2799"></asp:Label>
                    <br />
                    <asp:DropDownList ID="WomenTrad3Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addWomenTrad3" runat="server" Text="Add to Cart" OnClick="addWomenTrad3_Click" />
                    <asp:Button ID="gotocartWomenTrad3" runat="server" Text="Go To Cart" OnClick="gotocartWomenTrad3_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
