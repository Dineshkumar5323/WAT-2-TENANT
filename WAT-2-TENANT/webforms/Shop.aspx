<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WAT_2_TENANT.webforms.Shop" MasterPageFile="~/W-2-T.Master" %>
 <%@ OutputCache Duration="10" VaryByParam="none" %>
<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    <center>
        <h1>Shop</h1>
    </center>
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Area"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_area" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_size" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Rent Amount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_rent" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Adavance Amount"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_advance" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_number" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_shop_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="About"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_shop_about" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Availability"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_shop_availability" runat="server">
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
                    <asp:TextBox ID="txt_shop_extra" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btn_shop_save" runat="server" Text="Save" OnClick="btn_shop_save_Click" />
                    <asp:Button ID="btn_shop_view" runat="server" Text="View" OnClick="btn_shop_view_Click" />
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
        width: 292px;
    }
    .auto-style2 {
        width: 384px;
    }
        .auto-style3 {
            width: 292px;
            height: 40px;
        }
        .auto-style4 {
            width: 384px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
        }
    </style>
</asp:Content>


