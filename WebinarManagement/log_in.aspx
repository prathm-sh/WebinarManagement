<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log_in.aspx.cs" Inherits="WebinarManagement.log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
    <link href="css/log_in_style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form onsubmit="event.preventDefault()" class="box" runat="server">
                    <h1>Login</h1>
                    <p class="text-muted"> Please enter your login and password!</p> 
                    
                    <asp:TextBox ID="txtUser" runat="server" type="text" placeholder="Username"></asp:TextBox>
                    <asp:TextBox ID="txtPass" runat="server" type="password" placeholder="password"></asp:TextBox>
                    <a class="forgot text-muted" href="#">Forgot password?</a>
                    <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
                    
                    <div class="col-md-12">
                        <ul class="social-network social-circle">
                            <li><a href="#" class="icoFacebook" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#" class="icoTwitter" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#" class="icoGoogle" title="Google +"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                    <br />
                    <br />
                    <br />
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
