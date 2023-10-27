<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAT_2_TENANT.webforms.Login" MasterPageFile="~/W-2-T.Master" Theme="Theme1" %>
<%@ OutputCache Duration='10' VaryByParam='none' %>
<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    
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
                    <asp:TextBox ID="txt_login_username" runat="server" SkinID="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_login_pass" runat="server" TextMode="Password" SkinID="txt"></asp:TextBox>
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
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .A{
           display:flex;
           align-items:center;
           margin:auto;
           margin-left:40%;
           width:50%;

        }

    </style>
</asp:Content>



<%--use Dinesh

select * from Student inner join Customer on student.name=Customer.employee_name

select * from Student left join Customer on student.name=Customer.employee_name

select * from Student right join Customer on student.Student_id=Customer.employee_id

select * from Student full join Customer on student.Student_id=Customer.employee_id

select * from Student,Customer where name='ashok' --%>
