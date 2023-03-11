<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="WebDevApplication3._0.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%">
    <div style="padding-top:40px; text-align: center;">
        
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Height="100%" HorizontalAlign="Center" Width="90%">
        <Columns>
            <asp:BoundField DataField="Product_Name" HeaderText="Product Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_QTY" HeaderText="Product QTY" SortExpression="Product_QTY" />
            <asp:BoundField DataField="Order_Date" HeaderText="Order Date" SortExpression="Order_Date" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ShippingInfo.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Product Name] AS Product_Name, [Product QTY] AS Product_QTY, [Order Date] AS Order_Date FROM [Shipping] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:SessionParameter Name="CustomerID" SessionField="userEmail" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
        </asp:Panel>
</asp:Content>
