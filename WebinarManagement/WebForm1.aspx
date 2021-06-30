<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebinarManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="showcase">
      <div class="container">
        <h1 id="h-1" style="text-align: center;font-size: 55px;margin-top: 100px;margin-bottom: 10px;width:auto">Affordable Professional Coursec</h1>
        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ven </p>
      </div>
    </section>

    <section id="newsletter">
      <div class="container">
        <h1 style="font-size: 36px;width: 600px;">Subscribe to our Newsletter</h1>
        <div style="float: right;margin-top: 15px;">
          <input type="email" name="email" placeholder="Enter email..." style="padding: 4px;height: 25px;width: 250px;">
          <button type="submit" class="button_1">Subscibe</button>
            </div>
            </div>
       
      
    </section>
    <div>
        <p class="h1 text-center">Choose Between this</p>
    </div>
    <div id="boxes">
        <div  style="width: 100%;height: 500px;margin: auto;margin-top: 50px;overflow: hidden;display: flex;flex-direction: row;justify-content: space-around;">
            <div class="box">
                <img src="img/webinar_reg.JPG"/>
                <h1 class="text-center">Add Webinar</h1>
                <asp:Button ID="Button1" runat="server" Text="Proceed" CssClass="btn btn-primary" Width="400px" OnClick="Button1_Click"/>
            </div>
            <div class="box">
                <img src="img/student_reg.JPG"/>
                <h1 class="text-center">Webinar List</h1>
                
                <asp:Button ID="Button2" runat="server" Text="Proceed" CssClass="btn btn-primary" Width="400px" OnClick="Button2_Click"/>
            </div>
            <div class="box">
                <img src="img/webinar2.png"/>
                <h1 class="text-center">Edit Webinar</h1>
                
                <asp:Button ID="Button3" runat="server" Text="Proceed" CssClass="btn btn-primary" Width="400px" OnClick="Button3_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
