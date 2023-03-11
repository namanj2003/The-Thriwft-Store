<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MensFormal2.aspx.cs" Inherits="WebDevApplication3._0.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails" style="text-align: center">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Men's Wear/Formal_2.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Green Tailored Fit Formal Suit</b></p>
                    <p>Complete your Formal collection with this green self designed slim-fit blazer, having notched lapel collar, single-breasted with double button closures, long sleeves, two flap pockets, one chest welt pocket, one inner welt packet, self designed mid-rise trousers, waistband with belt loops, a zip fly and a button closure.</p>
                    <p>Type : Three Piece Suit</p>
                    <p>Design : Self-Designed Solid</p>
                    <p>Style : Formals</p>
                    <p>Sleeve Length : Full Sleeves</p>
                    <p>Fabric : Terylene</p>
                    <p>Fit : Regular</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Model Wears : Size M, has Height 6'0" and Chest 38"</p>


                    Price: Rs <asp:Label ID="menFormal2Price" runat="server" Text="4999"></asp:Label>
                    <br />
                    <asp:DropDownList ID="MenFormal2Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addMenFormal2" runat="server" Text="Add to Cart" OnClick="addMenFormal2_Click" />
                    <asp:Button ID="gotocartMenFormal2" runat="server" Text="Go To Cart" OnClick="gotocartMenFormal2_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
