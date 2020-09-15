<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>Register Page</h2>
        <p>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 54px">
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td style="height: 54px">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="height: 54px"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>MY</asp:ListItem>
                            <asp:ListItem>SG</asp:ListItem>
                            <asp:ListItem>PH</asp:ListItem>
                            <asp:ListItem>HK</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 29px">
                        <asp:Label ID="Label6" runat="server" Text="User Type"></asp:Label>
                    </td>
                    <td style="height: 29px">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="height: 29px"></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>

</asp:Content>

