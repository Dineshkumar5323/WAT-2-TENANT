<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WAT_2_TENANT.WebUserControl1" %>
 <%@ OutputCache Duration="60" VaryByParam="none" %>

    <center>
        <h1>Login</h1>
    </center>
    <div class="A">
        <table class="auto-style1" border="0">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_login_username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_login_pass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    User Type</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_login" runat="server" OnSelectedIndexChanged="drp_login_SelectedIndexChanged">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Owner</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btn_login_submit" runat="server" Text="Submit" OnClick="btn_login_submit_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    Not a member <a href="Register.aspx">Register</a></td>
            </tr>
        </table>
        
    </div>