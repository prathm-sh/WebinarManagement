<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Webinar_List.aspx.cs" Inherits="WebinarManagement.Webinar_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 151px;
            width:201px;
        }
        .auto-style2 {
            height: 38px;
            width: 201px;
        }
        .auto-style3 {
            margin-right: -15px;
            margin-left: -15px;
            width: 201px;
        }
        .auto-style4 {
            width: 201px;
        }
        .auto-style5 {
            margin-right: -15px;
            margin-left: 25px;
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Webinar List
        <p class="h1 text-center">Register Here</p>
    </div>
    <div class="d-flex justify-content-center">
        <div class="container">
            
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Webid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" CellPadding="3" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" Width="713px" CellSpacing="30">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <table align="center" class="nav-justified  table table-bordered">
                    <tr>
                        <td class="auto-style5">
                            &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("Webname") %>' Font-Names="Humnst777 Blk BT" Font-Underline="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Webimages") %>' Height="138px" Width="230px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Dubai Medium" ForeColor="#666666" Text="Description"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Webabout") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Dubai Medium" ForeColor="#666666" Text="Fees"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Overline="False" Font-Strikeout="True" Text='<%# Eval("Webfees") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Dubai Medium" ForeColor="#666666" Text="Discount Price"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" Text='<%# Eval("Webdiscount") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Dubai Medium" Text="Date &amp; Time"></asp:Label>
                            &nbsp;:
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Webdate") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label10" runat="server" Text='<%# Eval("Webtime") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Register" Width="230px" OnClick="Button1_Click" />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SeparatorStyle BackColor="#FF9900" />
        </asp:DataList>
        <br />
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

        </div>
    </div>

    <div class="container">
                <br />
        <br />
    </div>
    
</asp:Content>
