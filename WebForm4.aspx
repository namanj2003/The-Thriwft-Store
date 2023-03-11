<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebDevApplication3._0.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            mage<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            Name
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Description<asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            Type<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Design<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Style<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Sleeve Length<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            Fabric<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            Fit<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            Care Instruction<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            Model Wears<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            Price<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                    <asp:DynamicField DataField="Product_Image" HeaderText="Product_Image" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Products %>" SelectCommand="SELECT [Product Image] AS Product_Image, [Product Description] AS Product_Description FROM [Products]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
