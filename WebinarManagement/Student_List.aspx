<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student_List.aspx.cs" Inherits="WebinarManagement.Student_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Students List
         <p class="h1 text-center">Students List</p>
    <div style=" padding: 10px; margin-left: auto; margin-top: auto; margin-bottom: auto;">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [StudentList]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
            <asp:BoundField DataField="Student_Email" HeaderText="Student_Email" SortExpression="Student_Email" />
            <asp:BoundField DataField="Student_Phone" HeaderText="Student_Phone" SortExpression="Student_Phone" />
            <asp:BoundField DataField="Student_About" HeaderText="Student_About" SortExpression="Student_About" />
            <asp:BoundField DataField="Webname" HeaderText="Webname" SortExpression="Webname" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </div>
        </div>
</asp:Content>
