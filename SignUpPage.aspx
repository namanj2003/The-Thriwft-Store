<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="WebDevAssignment.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %>- The Thriwft Store</title>
    <link href="images/mylogo-transformed.png" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="WebsiteStyling.css" />
    <style type="text/css">
        .auto-style1 {
            width: 190px;
        }
        .auto-style2 {
            width: 195px;
        }
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
        .auto-style3 {
            text-align: center;
            width:100%;
        }
        .auto-style4 {
            text-align: center;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="auto-style3">

                <asp:ImageButton ID="logoImg1" runat="server" Height="88px" Width="140px" ImageAlign="Middle" AlternateText="Logo Here" ImageUrl="~\images\mylogo-transformed.png"/>
        </nav>
        <div style="align-self: center; border-style: solid; border-color: black; height: fit-content; width: fit-content; padding-top: 25px; padding-bottom: 25px; padding-left: 50px; padding-right: 50px; font-size: larger; margin: auto; margin-top: 100px;">
            <br />
            <br />
            <table dir="auto">
                <tr>
                    <td class="auto-style4" colspan="3" style="font-family: Arial">
                        <asp:Label ID="Label1" runat="server" Text="Sign Up" Font-Bold="True" Font-Names="Cooper Black" Font-Size="25pt"></asp:Label>
            
                    </td>
                </tr>
                <tr>
                    <td style="font-family: Arial">
                        <asp:Label ID="Name1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style1" style="font-family: Arial">
                        <asp:TextBox ID="TxtName1" runat="server"></asp:TextBox>
                    </td>
                    <td style="font-family: Arial">
                        <asp:RequiredFieldValidator ID="NameValid1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="TxtName1" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: Arial">
                        <asp:Label ID="Email1" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style1" style="font-family: Arial">
                        <asp:TextBox ID="TxtEmail1" runat="server"></asp:TextBox>
                    </td>
                    <td style="font-family: Arial">
                        
                        <asp:RequiredFieldValidator ID="EmailValid1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="TxtEmail1" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="EmailValid2" runat="server" Display="Dynamic" ErrorMessage="Invalid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TxtEmail1" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: Arial">
                        <asp:Label ID="Password1" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style1" style="font-family: Arial">
                        <asp:TextBox ID="TxtPassword1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="font-family: Arial">
                        <asp:RequiredFieldValidator ID="PasswordValid1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="TxtPassword1" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: Arial">
                        <asp:Label ID="ConfPassword1" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style1" style="font-family: Arial">
                        <asp:TextBox ID="TxtConfPassword1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="font-family: Arial">
                        <asp:RequiredFieldValidator ID="ConfPasswordValidator1" runat="server" ErrorMessage="Field Cannot be Empty" ControlToValidate="TxtConfPassword1" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="ConfPasswordValidator2" runat="server" ErrorMessage="Password Does Not Match" ControlToValidate="TxtConfPassword1" ForeColor="Red" Type="String" Operator="Equal" ControlToCompare="TxtPassword1" ValidationGroup="SignUp" Display="Dynamic" ></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family: Arial">
                        <asp:Label ID="Mobile1" runat="server" Text="Mobile No."></asp:Label>
                    </td>
                    <td class="auto-style1" style="font-family: Arial">
                        <asp:TextBox ID="TxtMobile1" runat="server" Text=""></asp:TextBox>
                    </td>
                    <td style="font-family: Arial">
                        <asp:RequiredFieldValidator ID="MobileValidator1" runat="server" ErrorMessage="Field Cannot be empty" ControlToValidate="TxtMobile1" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="MobileValidator2" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="TxtMobile1" ValidationExpression="[0-9]{10}" ForeColor="Red" Display="Dynamic" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <div style="font-family: Arial; font-weight: bold; color: #666699; font-size: 12pt; padding-top: 15px; padding-bottom: 25px;">


                <br />
                <asp:Label ID="StatusBox1" runat="server"></asp:Label>
                <br />
                <asp:LinkButton ID="takeToLogin" runat="server" OnClick="LinkButton1_Click" Text="Click here to login" Style="font-family:Arial; color:#009999; " Font-Bold="True"></asp:LinkButton>
                <br />
            </div>
            <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" Height="27px" Width="150px" OnClick="SignUpButton_Click" ValidationGroup="SignUp" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Reset1" runat="server" Height="27px" OnClick="Reset1_Click" Text="Reset" Width="150px"/>
        </div>
        <footer class="footer2">
            <p style="margin: 0px; padding: 5px;">&copy; <%: DateTime.Now.Year %> - The Thriwft Store</p>
             </footer>
    </form>
</body>
</html>
