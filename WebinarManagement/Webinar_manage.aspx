<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Webinar_manage.aspx.cs" Inherits="WebinarManagement.Webinar_manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-bottom: 12px;
    }
    .auto-style2 {
        width: 80%;
        margin-right: 268px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Webinar] WHERE [Webid] = @Webid" InsertCommand="INSERT INTO [Webinar] ([Webname], [Webdate], [Webtime], [Webfees], [Webimages], [Webdiscount], [Webabout]) VALUES (@Webname, @Webdate, @Webtime, @Webfees, @Webimages, @Webdiscount, @Webabout)" SelectCommand="SELECT * FROM [Webinar]" UpdateCommand="UPDATE [Webinar] SET [Webname] = @Webname, [Webdate] = @Webdate, [Webtime] = @Webtime, [Webfees] = @Webfees, [Webimages] = @Webimages, [Webdiscount] = @Webdiscount, [Webabout] = @Webabout WHERE [Webid] = @Webid">
        <DeleteParameters>
            <asp:Parameter Name="Webid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Webname" Type="String" />
            <asp:Parameter Name="Webdate" Type="String" />
            <asp:Parameter Name="Webtime" Type="String" />
            <asp:Parameter Name="Webfees" Type="Int32" />
            <asp:Parameter Name="Webimages" Type="String" />
            <asp:Parameter Name="Webdiscount" Type="Int32" />
            <asp:Parameter Name="Webabout" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Webname" Type="String" />
            <asp:Parameter Name="Webdate" Type="String" />
            <asp:Parameter Name="Webtime" Type="String" />
            <asp:Parameter Name="Webfees" Type="Int32" />
            <asp:Parameter Name="Webimages" Type="String" />
            <asp:Parameter Name="Webdiscount" Type="Int32" />
            <asp:Parameter Name="Webabout" Type="String" />
            <asp:Parameter Name="Webid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Webinar List
        <p class="h1 text-center">Edit Webinar Here</p>
    <div class="row">
        
        <div style=" padding: 10px; margin-left: auto; margin-top: auto; margin-bottom: auto;" class="auto-style2">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" DataKeyNames="Webid" DataSourceID="SqlDataSource1" Width="119%" CssClass="auto-style1" Height="393px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Webname" HeaderText="Webname" SortExpression="Webname" />
            <asp:BoundField DataField="Webdate" HeaderText="Webdate" SortExpression="Webdate" />
            <asp:BoundField DataField="Webtime" HeaderText="Webtime" SortExpression="Webtime" />
            <asp:BoundField DataField="Webfees" HeaderText="Webfees" SortExpression="Webfees" />
            <asp:BoundField DataField="Webdiscount" HeaderText="Webdiscount" SortExpression="Webdiscount" />
            <asp:BoundField DataField="Webabout" HeaderText="Webabout" SortExpression="Webabout" />
            <asp:BoundField DataField="Webid" HeaderText="Webid" InsertVisible="False" ReadOnly="True" SortExpression="Webid" />
            <asp:BoundField DataField="Webimages" HeaderText="Webimages" InsertVisible="False" SortExpression="Webimages" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
            </div>
      
        </div>
</asp:Content>
