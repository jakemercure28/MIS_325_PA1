<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Book store POS system.aspx.vb" Inherits="Book_store_POS_system" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 151px;
            width: 585px;
        }
        .auto-style4 {
            width: 585px;
            text-align: left;
        }
        .auto-style5 {
            width: 585px;
            height: 44px;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style7 {
            width: 585px;
            height: 52px;
        }
        .auto-style8 {
            height: 52px;
        }
        .auto-style9 {
            width: 585px;
            text-align: left;
        }
        .auto-style10 {
            width: 585px;
            text-align: left;
            height: 101px;
        }
        .auto-style11 {
            height: 101px;
        }
        .auto-style12 {
            height: 151px;
        }
        .auto-style13 {
            height: 151px;
            width: 311px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">Book Store POS System</td>
            </tr>
            <tr>
                <td class="auto-style3">Choose sales category (select)</td>
                <td class="auto-style13">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="264px">
                        <asp:ListItem Value="0">Magazines</asp:ListItem>
                        <asp:ListItem Value="1">Books</asp:ListItem>
                        <asp:ListItem Value="2">Toys</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style12">
                    <asp:Image ID="Image1" runat="server" Height="250px" Width="218px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Enter price of sales item ($)</td>
                <td class="auto-style6" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="137px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Enter quantity of sales item</td>
                <td class="auto-style8" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Total&nbsp; price of item(s)</td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Calculate" Width="136px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Sale Management System:</td>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="136px" TextMode="MultiLine" Width="424px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Inventory Management System</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" Height="126px" TextMode="MultiLine" Width="422px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
