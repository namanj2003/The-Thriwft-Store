<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebDevAssignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %>- The Thriwft Store</title>
    <link href="images/mylogo-transformed.png" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="WebsiteStyling.css" />
    <style type="text/css">
        .footer2 {
            background-color: #1E212D;
            position: fixed;
            bottom: 0%;
            left: 0%;
            text-align: center;
            width: 100%;
            color: #7C6F57;
            font-weight: bold;
            font-family: Arial;
            padding: 5px;
        }

        .hr2 {
            color: black;
            border: thin solid #000000;
        }
        
        .auto-style1 {
            text-align: center;
            width:100%;
        }
        
    </style>
    </head>
<body>
    <form id="form1" runat="server">   
        <nav class="auto-style1">

                <asp:ImageButton ID="logoImg1" runat="server" Height="88px" Width="140px" ImageAlign="AbsMiddle" AlternateText="Logo Here" ImageUrl="~\images\mylogo-transformed.png" style=""/>
        </nav>
      <div style="text-align:center; border-style:solid; border-color:black; height:fit-content; width:fit-content; padding-top:25px;padding-bottom:25px;padding-left:50px;padding-right:50px; font-size:larger; margin:auto; margin-top:100px;">

         <div style="text-align:center;">
           
           <div style="font-family:Arial; font-weight:bold; color:#666699; font-size:12pt; padding-top:15px; padding-bottom:25px;">
            <asp:Label ID="lblLoginEmail" runat="server" Text="Email ID"></asp:Label>
            <br />
            <asp:TextBox ID="txtLoginEmail" runat="server" Height="21px" Width="201px"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="EmailLogin1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="TxtLoginEmail" ForeColor="Red" Display="Dynamic" ValidationGroup="Login"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="Emaillogin2" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="TxtLoginEmail" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ValidationGroup="Login"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" Height="21px" Width="201px"></asp:TextBox>
           
               <br />
               <asp:RequiredFieldValidator ID="PasswordLogin1" runat="server"  ErrorMessage="Field Cannot be empty" ControlToValidate="txtLoginPassword" ForeColor="Red" Display="Dynamic" ValidationGroup="Login"></asp:RequiredFieldValidator>
           
               <br />
               <br />
           
            <asp:Button ID="loginButton" runat="server" Text="LOGIN" Font-Bold="True" Font-Names="Arial" Font-Size="10pt" Height="30px" OnClick="loginButton_Click" Width="114px" ValidationGroup="Login" />
             <br />
             <br />
             <asp:Label ID="loginError" runat="server" ></asp:Label>
            <br />  
               </div>
         </div>
           <div style="text-align:center; padding-top:45px; padding-bottom:20px;">
               <asp:LinkButton ID="takeToCreate" runat="server" style="font-family:Arial; font-size:12pt; color:#009999;" Text="New User?....Sign Up"   OnClick="takeToCreate_Click" Font-Bold="True"></asp:LinkButton>
            <br />
            <br />
           </div>
            
      </div>
        <footer class="footer2">
            <p style="margin: 0px; padding: 5px;">&copy; <%: DateTime.Now.Year %> - The Thriwft Store</p>
             </footer>
    </form>
</body>
</html>
