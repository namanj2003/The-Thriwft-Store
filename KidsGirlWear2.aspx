<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="KidsGirlWear2.aspx.cs" Inherits="WebDevApplication3._0.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Font-Names="Arial" Width="100%">
        <table>
            <tr>
                <td class="ProdDetails">
                    <asp:Image runat="server" ImageUrl="~/images/Product Images/Kid's Wear/KidsWear_Girls_2.png" Height="475px" Width="340px" ImageAlign="Middle"></asp:Image>
                </td>
                <td class="ProdDetails">
                    <p><b>Green Dungaree Dress</b></p>
                    <p>Dungaree dress in narrow-wale corduroy and a coordinating top in soft cotton jersey. Dress with adjustable straps and metal fasteners, a gathered seam at the waist with covered elastication , and a flared skirt. Long-sleeved top with a round neckline.</p>
                    <p>Type : Dungaree</p>
                    <p>Design : Print or Pattern Type Solid</p>
                    <p>Style : Western</p>
                    <p>Sleeve Length : Full Sleeves</p>
                    <p>Fabric : Cotton Waven</p>
                    <p>Fit : Pinafore</p>
                    <p>Care Instructions : Machine Wash</p>
                    <p>Age: 12-13yrs </p>






                    Price: Rs <asp:Label ID="KidGirlWear2Price" runat="server" Text="799"></asp:Label>
                    <br />
                    <asp:DropDownList ID="KidGirlWear2Qty" runat="server">
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="addKidGirlWear2" runat="server" Text="Add to Cart" OnClick="addKidGirlWear2_Click" />
                    <asp:Button ID="gotocartKidGirlWear2" runat="server" Text="Go To Cart" OnClick="gotocartKidGirlWear2_Click" Visible="false" />
                    <br />
                    <asp:Label ID="lblAddedMTC" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
