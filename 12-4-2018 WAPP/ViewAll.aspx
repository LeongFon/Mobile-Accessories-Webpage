﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewAll.aspx.cs" Inherits="ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <asp:Label ID="Label1" runat="server" Text="View All"></asp:Label>
    </h2>
    <table class="w-100" border="1" style="background-color: #FFFFCC">
        <tr style="font-weight: bold;">
            <td>Username</td>
            <td>Email</td>
            <td>Gender</td>
             <td>Country</td>
             <td>User Type</td>
        </tr>
       <%=fetchData ()%>
    </table>
    
</asp:Content>
