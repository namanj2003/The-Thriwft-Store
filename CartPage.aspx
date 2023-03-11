<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="WebDevApplication3._0.WebForm2" %>

<asp:Content ID="CartPageContent1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <table class="cart">
            <tr>
                <td>
                    <asp:Label ID="emptyCart" runat="server" Text="Your Cart is Empty!!!"></asp:Label>
                </td>
            </tr>
        </table>
        
        <table id="mensTrad3AddedTC" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds1" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty1" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds1" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds1_SelectedIndexChanged" style="margin-left: 0px">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price1" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice1" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove1" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove1_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="MensCasual1" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds2" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty2" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds2" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds2_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price2" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice2" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove2" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove2_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="MensFormal2" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds3" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty3" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds3" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds3_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price3" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice3" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove3" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove3_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="WomenTrad3" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds4" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty4" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds4" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds4_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price4" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice4" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove4" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove4_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="WomenWestern2" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds5" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty5" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds5" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds5_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price5" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice5" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove5" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove5_Click" BackColor="White" BorderStyle="None" Width="25px"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="WomenCasual2" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds6" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty6" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds6" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds6_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price6" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice6" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove6" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove6_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="KidGirlWear2" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds7" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty7" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds7" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds7_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price7" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice7" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove7" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove7_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="KidGirlWear3" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds8" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty8" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds8" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds8_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price8" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice8" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove8" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove8_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="KidBoyWear2" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds9" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty9" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds9" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds9_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price9" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice9" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove9" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove9_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>

        <table id="KidBoyWear3" class="cart">
            <tr>
                <td class="cartItems">
                    <asp:Label ID="LabelAddedProds10" runat="server" Visible="False" Width="215px"></asp:Label>
                </td>

                <td class="cartItems">
                    <asp:Label ID="qty10" runat="server" Text="Qty" Visible="false"></asp:Label><asp:DropDownList ID="dlAddedProds10" runat="server" Width="142px" Visible="false" AutoPostBack="True" OnSelectedIndexChanged="dlAddedProds10_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Quantity</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cartItems">
                    <asp:Label ID="price10" runat="server" Text="Price:" Visible="false"></asp:Label><asp:Label ID="LabelTotalPrice10" runat="server" Visible="False" Width="200px"></asp:Label>
                </td>
                <td class="cartItems">
                    <asp:Button ID="remove10" runat="server" Text="X" Visible="false" Font-Underline="False" OnClick="Remove10_Click" BackColor="White" BorderStyle="None"></asp:Button>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <table class="cart">
        <tr>
            <td>
                <asp:Label ID="finalBill1" runat="server" Text="Total Amount: " Visible="false"></asp:Label>
                <asp:Label ID="finalAmt1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

    <table class="cart">
        <tr>
            <td>
                <asp:RadioButton ID="rbCOD" runat="server" Text="Cash on Delivery" Checked="True" TextAlign="Left"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
    <br />
    <table id="Shipping1" class="shipping" visible="false">
        <tr>
            <td>
                <asp:Label ID="shippingAddress" runat="server" Text="Shipping Address"></asp:Label>
                <br />
                <asp:TextBox ID="txtShippingAddress" runat="server" Width="550px" ValidationGroup="Shipping"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Shipping" ControlToValidate="txtShippingAddress"></asp:RequiredFieldValidator>
                <br />
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="shippingCity" runat="server" Text="City"></asp:Label>
                <br />
                <asp:TextBox ID="txtCity" runat="server" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Shipping" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="shippingState" runat="server" Text="State"></asp:Label>
                <br />
                <asp:TextBox ID="txtState" runat="server" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Shipping" ControlToValidate="txtState"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="shippingPincode" runat="server" Text="Pin Code"></asp:Label>
                <br />
                <asp:TextBox ID="txtPincode" runat="server" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Shipping" ControlToValidate="txtPincode"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Invalid Pincode" ForeColor="Red" ControlToValidate="txtPincode" ValidationExpression="^[1-9]{1}[0-9]{2}[0-9]{3}$" ValidationGroup="Shipping"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="shippingMobileNo" runat="server" Text="Mobile No."></asp:Label>
                <br />
                <asp:TextBox ID="txtMobile" runat="server" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Shipping" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Invalid Mobile no." ForeColor="Red" ControlToValidate="txtMobile" ValidationExpression="[0-9]{10}" ValidationGroup="Shipping"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="order1" runat="server" Text="Place Order" ValidationGroup="Shipping" OnClick="order1_Click" />
        <br />
            </td>
        </tr>
        
    </table>
</asp:Content>
