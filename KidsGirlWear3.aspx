<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="KidsGirlWear3.aspx.cs" Inherits="WebDevApplication3._0.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_3.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Pink Printed Sleeveless Dress</b></p>
                    <p>Sleeveless dress in patterned cotton jersey with a gathered seam at the waist and flared skirt.</p>
                    <p>Type : Dress</p>
                    <p>Design : Print or Pattern Type Conversational</p>
                    <p>Style : Western</p>
                    <p>Sleeve Length : Sleeveless</p>
                    <p>Fabric : Cotton Waven</p>
                    <p>Fit : Fit & Flare</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Age: 9-10yrs</p>

                    Price: Rs <asp:Label ID="KidGirlWear3Price" runat="server" Text="899"></asp:Label>
                    <br />
                    <asp:DropDownList ID="KidGirlWear3Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addKidGirlWear3" runat="server" Text="Add to Cart" OnClick="addKidGirlWear3_Click" />
                    <asp:Button ID="gotocartKidGirlWear3" runat="server" Text="Go To Cart" OnClick="gotocartKidGirlWear3_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
