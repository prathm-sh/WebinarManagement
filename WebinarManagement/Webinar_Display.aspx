<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Webinar_Display.aspx.cs" Inherits="WebinarManagement.Webinar_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/webinar_display_style.css" rel="stylesheet" />
    <script src="Scripts/Webinar_display_script.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Webinar List
        <p class="h1 text-center flex-center">List of Webinar</p>
    </div>
    <div class="flex-center">
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#FF3300" DataSourceID="SqlDataSource1" BorderWidth="5px" CellPadding="3" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="20">
            <ItemStyle ForeColor="Black"  />
            <ItemTemplate >
                <figure class="snip1336">
                    <asp:Image ID="imgPhoto" runat="server" ImageUrl='<%# Eval("Webimages") %>' Width="100%" Height="159px" CssClass="img-poster"/>
                      
                      <figcaption>
                        <img src="img/logo_op.jpg" alt="profile-sample4" class="profile" />
                        <h2>'<%# Eval("Webname") %>'<span>Computer Science</span></h2>
                        <p>'<%# Eval("Webabout") %>'</p>
                        <a href="Student_Form.aspx" class="follow">Register</a>
                        <a href="#" class="info">More Info</a>
                      </figcaption>
                    </figure>
            </ItemTemplate>
        </asp:DataList>
        </div>
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

    
        <!--
    </div>
    <div class="flex-center">
<figure class="snip1336">
  <img src="/img/2021-06-23T235726.jpg" alt="sample87" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample4.jpg" alt="profile-sample4" class="profile" />
    <h2>Hans Down<span>Engineer</span></h2>
    <p>I'm looking for something that can deliver a 50-pound payload of snow on a small feminine target. Can you suggest something? Hello...? </p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>
<figure class="snip1336 hover"><img src="/img/2021-06-23T235726.jpg" alt="sample74" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample2.jpg" alt="profile-sample2" class="profile" />
    <h2>Wisteria Widget<span>Photographer</span></h2>
    <p>Calvin: I'm a genius, but I'm a misunderstood genius. Hobbes: What's misunderstood about you? Calvin: Nobody thinks I'm a genius.</p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>
<figure class="snip1336"><img src="/img/2021-06-23T200434.png" alt="sample69" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample5.jpg" alt="profile-sample5" class="profile" />
    <h2>Desmond Eagle<span>Accountant</span></h2>
    <p>If you want to stay dad you've got to polish your image. I think the image we need to create for you is "repentant but learning".</p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>
        </div>
    -->
</asp:Content>
