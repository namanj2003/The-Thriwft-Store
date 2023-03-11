<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="OrderConfirmPage.aspx.cs" Inherits="WebDevApplication3._0.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="text-align:center;padding-bottom:50px" Height="393px" Font-Names="Arial Rounded MT Bold" Font-Size="30px">
        <asp:Image ID="Image1" runat="server" HorizontalAlign="Center" ImageAlign="TextTop" ImageUrl="~/images/order-confirmed.png" Height="200px" Width="200px"/>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Thanks For Placing Your Order " />
        <asp:Label ID="CustName" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="We Have Also Sent The Order Confirmation At "></asp:Label>
        <asp:Label ID="CustEmail" runat="server" Text=""></asp:Label>
        <br />
            <asp:Label ID="Label2" Text="Your Order Will Reach your Location Soon" runat="server"></asp:Label>
    </asp:Panel>
</asp:Content>
