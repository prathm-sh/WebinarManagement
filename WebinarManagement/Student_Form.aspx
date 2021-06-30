<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student_Form.aspx.cs" Inherits="WebinarManagement.Student_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Webinar
    <p class="h1 text-center">Ragister Here</p>
    <div>
         <div class="container">
    <div class="col-4 d-flex justify-content-center">
        
         <div class="form-group row">
    <label for="inputName3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <asp:TextBox ID="txtName" runat="server" class="form-control" cssid="inputEmail3" placeholder="Enter Name" required></asp:TextBox>
    </div>
  </div>
         <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" cssid="inputEmail3" placeholder="Email" required TextMode="Email"></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">       
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"  class="form-control" cssid="inputPassword3" placeholder="Password"  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" required></asp:TextBox>
    </div>
  </div>
        <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"  class="form-control" cssid="inputPassword3" placeholder="Renter Password"  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" required></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="txtPassword1" ControlToValidate="txtPassword">*</asp:CompareValidator>
            <small id="passwordHelpInline" class="text-muted"> Must be 8-20 characters long. Must include uppercase, lowewrcase, no. and character</small>

    </div>
  </div>
         <div class="form-group">
    <label for="exampleFormControlFile1">Select Webinar</label>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" required DataSourceID="SqlDataSource1" DataTextField="Webname" DataValueField="Webid"></asp:DropDownList>
     
  </div>
         <div class="form-group row">
    <label for="inputContact" class="col-sm-2 col-form-label">Contact</label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtContact" type="tel" runat="server" class="form-control" cssid="inputEmail3" placeholder="Enter phone no." TextMode="Phone" MinLength="10" MaxLength="11" required ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="Enter valid Phone NO." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
    </div>
  </div>
        <div class="form-group row">
    <label for="inputAbout" class="col-sm-2 col-form-label">About </label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtAbout"  runat="server" class="form-control" cssid="inputEmail3" placeholder="Enter About Yourself." TextMode="MultiLine"></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
        
      <asp:Button ID="Button1" runat="server" Text="Register"  class="btn btn-primary" OnClick="Button1_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Webid], [Webname] FROM [Webinar]"></asp:SqlDataSource>
    </div>
  </div>
        </div>
    </div>
    </div>
</asp:Content>
