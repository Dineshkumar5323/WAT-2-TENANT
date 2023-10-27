<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WAT_2_TENANT.webforms.About"  MasterPageFile="~/W-2-T.Master"%>
 <%@ OutputCache Duration="10" VaryByParam="none" %>
<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    <center>
        <h1>About</h1>
    </center>
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
    </style>
</asp:Content>
