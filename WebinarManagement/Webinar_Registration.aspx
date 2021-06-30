<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Webinar_Registration.aspx.cs" Inherits="WebinarManagement.Webinar_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.css" integrity="sha512-4S7w9W6/qX2AhdMAAJ+jYF/XifUfFtrnFSMKHzFWbkE2Sgvbn5EhGIR9w4tvk0vfS1hKppFIbWt/vdVIFrIAKw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <script>
        $(function () {
            $('.timepicker').timepicker({
                timeFormat: 'h:mm p',
                interval: 60,
                minTime: '9:00am',
                maxTime: '6:00pm',
                defaultTime: '9',
                startTime: '9:00',
                dynamic: false,
                dropdown: true,
                scrollbar: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <a href="WebForm1.aspx" style="margin-left:40px;">Panel</a>>> Webinar Registration
    <p class="h1 text-center">Ragister Here</p>
    <div class="container">
        
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-laptop"></i>  Webinar Topic</label>
                    <asp:TextBox ID="txtName" class="form-control" runat="server" required></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-calendar"></i> Webinar Date</label>
                    <asp:TextBox ID="txtDate" class="form-control" runat="server" TextMode="Date" required></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-clock-o"></i>  Webinar Time</label>
                    <asp:TextBox ID="txtTime"  cssclass="form-control timepicker" runat="server" required></asp:TextBox>
                </div>
            </div>
            
        <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-inr"></i>Ragistration Fees(actual Fee)</label>
                    <asp:TextBox ID="txtFee" class="form-control" runat="server" pattern= "[0-9]+" required></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-inr"></i>  Discounted Price</label>
                    <asp:TextBox ID="txtDiscount" class="form-control" runat="server" pattern= "[0-9]+" required></asp:TextBox>
                </div>
                <div class="col-md-4 mb-3">
                    <label><i class="fa fa-info-circle"></i>  Description</label>
                    <asp:TextBox ID="txtDescription"  cssclass="form-control" TextMode="MultiLine" runat="server" ></asp:TextBox>
                </div>
            </div>
        <div class="form-row">
            <div class="col-md-6 mb-2">
                <label><i class="fa fa-file"></i>Select Image </label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" accept="image/gif, image/jpeg, image/png" required />
                <br />
                <br />
                <label><i class="fa fa-sticky-note-o" aria-hidden="true"></i> NOTE:</label>
                <ul>
                    <li><small class="form-text text-muted">File size upto 2MB</small></li>
                    <li><small class="form-text text-muted">Only (.JPG, .JPEG, .PNG) Files are allowed</small></li>
                    <li><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" /></li>
                </ul>
            </div>
            
        </div>
        
        <div class="form-row">
            <div class="col-lg-2">
                
            </div>
        </div>

    </div>
        
        
</asp:Content>
