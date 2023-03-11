<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="WomensCasual2.aspx.cs" Inherits="WebDevApplication3._0.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Women's Wear/Casual_2.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Navy Blue A-Line Top</b></p>
                    <p>Make a style quotient with this navy blue regular A-line top with ethnic woven crepe.</p>
                    <p>Model Wears: Size S Height 5'8</p>
                    <p>Material: Polyester</p>
                    <p>Sleeve Length: Three-Quarter Sleeves</p>
                    <p>Neck: Round Neck</p>
                    <p>Type: A-Line</p>
                    <p>Design: Print or Pattern Type</p>
                    <p>Sleeve Styling: Bell Sleeves</p>
                    <p>Care Instructions: Machine Wash</p>




                    Price: Rs <asp:Label ID="WomenCasual2Price" runat="server" Text="1799"></asp:Label>
                    <br />
                    <asp:DropDownList ID="WomenCasual2Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addWomenCasual2" runat="server" Text="Add to Cart" OnClick="addWomenCasual2_Click" />
                    <asp:Button ID="gotocartWomenCasual2" runat="server" Text="Go To Cart" OnClick="gotocartWomenCasual2_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
