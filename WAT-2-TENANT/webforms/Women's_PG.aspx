<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Women's_PG.aspx.cs" Inherits="WAT_2_TENANT.webforms.Women_s_PG" MasterPageFile="~/W-2-T.Master" %>
 <%@ OutputCache Duration="10" VaryByParam="none" %>
<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    <center>
        <h1>WOMEN'S PG</h1>
    </center>
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Area"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_area" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Food"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_women_food" runat="server">
                        <asp:ListItem>----Select----</asp:ListItem>
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Rent Amount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_rent" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Advance Amount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_advance" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_number" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="About"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_about" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Availability"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_women_availability" runat="server">
                        <asp:ListItem>----Select----</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Extra"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_women_extra" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btn_women_save" runat="server" Text="Save" OnClick="btn_women_save_Click" />
                    <asp:Button ID="btn_women_view" runat="server" Text="View" OnClick="btn_women_view_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }
        .auto-style2 {
            width: 350px;
        }
    </style>
</asp:Content>

