<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="ContactUsPage.aspx.cs" Inherits="WebDevApplication3._0.WebForm1" %>
<asp:Content ID="ContactusContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center; font-family:Arial;">
    <h2><%: Title %>
        <asp:Label ID="Label1" runat="server" Text="Enter Your Query in Detail Here"></asp:Label>
    </h2>
    
        <a> Alternatively you can contact us directly at</a> <a href="mailto:support@theThriwftStore.com">support@theThriwftStore.com</a> </asp:Label>
    
    <p>&nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="UserContactUsEmail" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="Contactusemail1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="UserContactUsEmail" ForeColor="Red" Display="Dynamic" ValidationGroup="ContactUs"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="Emaillogin2" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="UserContactUsEmail" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ValidationGroup="ContactUs"></asp:RegularExpressionValidator>
            </p>
    <p>Please Describe Your Query/Issue</p>
    <asp:TextBox ID="UserQuery1" runat="server" Height="111px"  TextMode="MultiLine" Width="483px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Cannot be Empty" ControlToValidate="UserQuery1" ForeColor="Red" ValidationGroup="ContactUs" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" ValidationGroup="ContactUs"/>
    <p>
        <asp:Label ID="QueryReceived" runat="server" ForeColor="#0066FF"></asp:Label>
    </p>
        </div>
</asp:Content>
