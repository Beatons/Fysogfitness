<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div id="gui">




        <table style="width: 100%;">
            <tr>
                <td style="width: 97px">Username:</td>
                <td>
                    <asp:TextBox ID="txtUser" runat="server" Font-Names="Trebuchet MS"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="RequiredFieldValidator" Font-Names="Trebuchet MS" ForeColor="#CC0000">Enter your username</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 97px">Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Trebuchet MS" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" Font-Names="Trebuchet MS" ForeColor="#CC0000">Enter your password</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 97px">
                    <asp:Label ID="Label1" runat="server" Font-Names="Trebuchet MS"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Loginbtn" runat="server" Text="Log In" BorderStyle="None" CssClass="button1" Font-Names="Trebuchet MS" OnClick="Loginbtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>




    </div>

</asp:Content>

