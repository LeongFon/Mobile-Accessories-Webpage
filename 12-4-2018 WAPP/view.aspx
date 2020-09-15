<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting1" SelectCommand="SELECT [Id], [username], [email], [gender], [country], [usertype] FROM [Users]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="764px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
        <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
    </Columns>
</asp:GridView>
</asp:Content>

