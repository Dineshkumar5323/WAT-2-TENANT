<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WAT_2_TENANT.webforms.Register" MasterPageFile="~/W-2-T.Master" %>
 <%@ OutputCache Duration="10" VaryByParam="none" %>
<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    <center>
        <h1>Register</h1>
    </center>
    <div class="A">
        <table class="auto-style1">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_pass" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_copass" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_register" runat="server">
                        <asp:ListItem>----Select----</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>House Owner</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_mobile" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Website"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_register_website" runat="server" TextMode="Url"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btn_registrer_register" runat="server" Text="Register" OnClick="btn_registrer_register_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    Already member <a href="Login.aspx">Login</a>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .A{
           display:flex;
           align-items:center;
           margin:auto;
           width:25%;

        }
    </style>
</asp:Content>
