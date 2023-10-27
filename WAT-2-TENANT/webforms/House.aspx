<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="House.aspx.cs" Inherits="WAT_2_TENANT.webforms.Home" MasterPageFile="~/W-2-T.Master" %>

<asp:Content ContentPlaceHolderID="Dashboard" runat="server">
    <center>
        <h1>House</h1>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="label1" runat="server" Text="Area"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_house_area" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">Type</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="Drp_house_type" runat="server">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>1BHK</asp:ListItem>
                            <asp:ListItem>2BHK</asp:ListItem>
                            <asp:ListItem>3BHK</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label3" runat="server" Text="Rent Amount"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_house_rent" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label4" runat="server" Text="Advance Amount"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_house_advance" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label5" runat="server" Text="Owner Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_house_owner" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_house_number" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label7" runat="server" Text="House Address"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_house_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style9" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label8" runat="server" Text="About"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txt_house_about" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style6" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
                        <asp:Label ID="Label9" runat="server" Text="Availability"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="drp_house_availability" runat="server">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label10" runat="server" Text="Extra"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_house_extra" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btn_house_save0" runat="server" Text="Save" OnClick="btn_house_save0_Click" Width="51px" />
                        <asp:Button ID="btn_house_view0" runat="server" OnClick="Button1_Click" Text="View" Width="59px" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
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
    </center>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 204px;
    }
    .auto-style2 {
        width: 271px;
    }
    .auto-style3 {
        width: 204px;
        height: 23px;
    }
    .auto-style4 {
        width: 271px;
        height: 23px;
    }
    .auto-style5 {
        height: 23px;
    }
    .auto-style6 {
        width: 204px;
        height: 25px;
    }
    .auto-style7 {
        width: 271px;
        height: 25px;
    }
    .auto-style8 {
        height: 25px;
    }
        .auto-style9 {
            width: 204px;
            height: 40px;
        }
        .auto-style10 {
            width: 271px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
    </style>
    
</asp:Content>
