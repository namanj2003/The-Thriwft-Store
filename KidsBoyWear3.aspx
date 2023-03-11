<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="KidsBoyWear3.aspx.cs" Inherits="WebDevApplication3._0.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Boys_3.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>White Dyed Hoodie and Pyjamas</b></p>
                    <p>This clothing set consists dyed T-shirt ,which is hooded & long sleeves with dyed Pyjamas ,which has a drawstring closure.</p>
                    <p>Type : Hoodie & Pyjamas</p>
                    <p>Design : Dyed</p>
                    <p>Style : Casual Western</p>
                    <p>Sleeve Length : Full Sleeves</p>
                    <p>Fabric : Cotton Blend</p>
                    <p>Fit : Regular</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Age: 6-7yrs</p>



                    Price: Rs <asp:Label ID="KidBoyWear3Price" runat="server" Text="899"></asp:Label>
                    <br />
                    <asp:DropDownList ID="KidBoyWear3Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addKidBoyWear3" runat="server" Text="Add to Cart" OnClick="addKidBoyWear3_Click" />
                    <asp:Button ID="gotocartKidBoyWear3" runat="server" Text="Go To Cart" OnClick="gotocartKidBoyWear3_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
