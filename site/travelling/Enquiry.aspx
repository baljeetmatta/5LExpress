<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Meta Tags -->
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
      <!-- Author -->
      <meta name="author" content="">
      <!-- description -->
      <meta name="description" content="">
      <!-- keywords -->
      <meta name="keywords" content="">
      <!-- Page Title -->
      <title>Enquiry:: Airline Tickets Fare</title>
      <!-- Favicon -->
      <link rel="icon" href="../vendor/img/favicon-1.ico">
      <!-- Bundle -->
      <link rel="stylesheet" href="../vendor/css/bundle.min.css">
      <!-- Plugin Css -->
      <link rel="stylesheet" href="../vendor/css/wow.css">
      <!-- Style Sheet -->
            <link rel="stylesheet" href="../vendor/css/footer.css">
	    
      <link rel="stylesheet" href="css/style.css">

   </head>
   <body data-spy="scroll" data-target=".navbar" data-offset="50">
       <form runat="server">
     <!-- Loader -->
      <div class="preloader">
         <div class="center">
            <div class="loader">
               <div></div>
               <div></div>
               <div></div>
               <div></div>
               <div></div>
               <div></div>
               <div></div>
               <div></div>
               <div></div>
            </div>
         </div>
      </div>
      <!-- Loader End -->
      <!-- Header start -->
 <header>
         <!--Navbar-->
     <nav class="navbar navbar-expand-lg navbar-top-default">
         <!--Side Menu Button-->
         <div class="container">
             <a class="navbar-brand" href="../index.html">
                 <img src="img/logo.png" alt="logo">
             </a>
             <!--Nav Links-->
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav">
                     <li class="nav-item  active">
                         <a class="nav-link" href="../index.html">Home</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Enquiry.aspx?Destination=Flights">Flights</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Enquiry.aspx?Destination=Hotels">Hotels</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="Enquiry.aspx?Destination=Cabs">Cabs</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="../index.html#contact">Contact</a>
                     </li>
                 </ul>
             </div>
         </div>
         <!-- Container End -->
         <a href="javascript:void(0)" class="sidemenu_btn link" id="sidemenu_toggle">
             <span></span>
             <span></span>
             <span></span>
         </a>
         <a class="number">
             <p></p>
         </a>
     </nav>
         <!-- Navbar End -->
         <!-- Side-Nav Start -->
         <div class="side-menu side-menu-opacity">
            <div class="bg-overlay"></div>
            <div class="inner-wrapper">
               <a class="image" href="../index.html">
               <img src="img/side-menu.png" alt="image">
               </a>
               <span class="btn-close" id="btn_sideNavClose"><i></i><i></i></span>
               <nav class="side-nav w-100">
                  <ul class="navbar-nav">
                     <li class="nav-item">
                        <a class="nav-link" href="../index.html">Home</a>                     </li>
                  <li class="nav-item">
                        <a class="nav-link" href="Enquiry.aspx?Destination=Flights">Flights</a>                     </li>
                  <li class="nav-item">
                        <a class="nav-link" href="Enquiry.aspx?Destination=Hotels">Hotels</a>                     </li>
                  <li class="nav-item">
                        <a class="nav-link" href="Enquiry.aspx?Destination=Cabs">Cabs</a>                     </li>
                  <li class="nav-item">
                        <a class="nav-link" href="../index.html#contact">Contact</a>                     </li>
                 </ul>
               </nav>
               <div class="side-menu-footer">
                  <div class="social-icons">
                     <ul>
                        <li>
                           <a href="#" class="hover"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li><a href="#" class="hover"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#" class="hover"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#" class="hover"><i class="fab fa-instagram"></i></a></li>
                     </ul>
                  </div>
              
               </div>
            </div>
         </div>
         <a id="close_side_menu" href="javascript:void(0);"></a>
         <!-- Side-Nav End -->
      </header>      <!-- Header End -->    <!-- Header End -->
            <!-- Banner Start -->
            <section class="banner">
               <div class=" col-12 header-text text-center wow fadeInDown" data-wow-delay="1000ms">
                     <h2 class="heading">Enquiry</h2>
                     <ul class="page-breadcrumb ">
                        <li><a href="../index.html"><i class="fas fa-home mr-1"></i>Home <i class="fas fa-angle-double-right white-icon"></i></a></li>
                      <li>Enquiry</li>
                  </ul>
                  </div>           
   </section>
            <!-- Banner End -->
<!-- Main Page Start -->
      <div class="main-page">
         <div class="container">
            <div class="standalone-heading text-center wow fadeInDown" data-wow-delay="1200ms">
               <div class="row">
                  <div class="col-12 col-lg-12 offset-lg-2 col-md-10 offset-md-1 wow fadeInDown" data-wow-delay="300ms" style="text-align:left;margin:0px;text-align:justify;font-weight:100">
                      
                     <h2 class="heading">Enquiry</h2>


                     
                         <asp:Panel runat="server" ID="PanelForm" >
                             <div class="row">
                           <div class="col-lg-6 col-md-6 col-sm-6">
                             <div class="form-group">
                              <asp:TextBox cssclass="form-control" id="Name" runat="server" placeholder="Your Name" required=""  name="userName"/>
                           </div>
                           <div class="form-group">
                              <asp:TextBox cssclass="form-control" id="Email" runat="server" type="email" placeholder="Email Address*" required=""  name="userEmail"/>
                           </div>
                           <div class="form-group">
                              <asp:TextBox cssclass="form-control" id="Subject" ReadOnly="true" runat="server" type="text" placeholder="Subject" required=""  name="userSubject"/>
                           </div>
                                <div class="form-group">
                              <asp:TextBox cssclass="form-control" id="Mobile"  runat="server" type="text" placeholder="Mobile" required=""  name="userMobile"/>
                           </div>
                           

                     
                   
                           <div class="form-group">
                              <asp:TextBox cssclass="form-control" runat="server" placeholder="Write your message here"  id="Message" TextMode="MultiLine"/>
                         
                        </div>
                        <div class="button-center">
                            <asp:Button runat="server" Text="Send Message" ID="send" CssClass="btn button btn-rounded green-btn btn-hvr-blue"/>
                           
                       
                        </div>
                               </div>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                 <img src="img/destination-banner.jpg" />
                                 </div>
                                 </div>
                             </asp:Panel>
                         <asp:Panel runat="server" ID="PanelMessage" >
                             <p>Thanks for Choosing us, Our representative will shortly get in touch with you.</p>
                             <asp:Literal runat="server" ID="lblMessage" />
                             </asp:Panel>
                     
                 </div>
               </div>
            </div>
          </div>
         <!-- Container End  -->
      </div>
      <!-- Main Page End -->
<!-- Footer -->
<!-- Start ui-block-01 -->
<footer class="footer ui-block-01 footer" style="padding-top:10px;padding-bottom:20px;">
    <div class="container">
        <div class="row footer-container">
            <div class="col-sm-12 col-lg-4 f-sec1  text-center text-lg-left">
                <h4 class="high-lighted-heading">About Us</h4>
                <p>AirlineTicketsFare is your go-to site for flight deals, last minute flights, travel tips and blogs that will inspire you. We’re a team of passionate</p>
                <a href="aboutus.html">Read more</a>
            </div>
            <div class="col-sm-12 col-lg-8 f-sec2 ">
                <div class="row">
                    <div class="col-12 col-md-4">
                        <h4 class="text-center text-md-left">Information</h4>
                        <ul class="text-center text-md-left">
                            <li><a href="aboutus.html">About Us</a></li>
                            
                            <li><a href="privacy.html">Privacy Policy</a></li>
                                                            <li><a href="rules.html">Rules & Regulations</a></li>
                            <li><a href="terms.html">Terms & Condition</a></li>
                            <li><a href="copyright.html">Copyright</a></li>
                            
                        </ul>
                    </div>
                    <div class="col-12 col-md-4">
                        <h4 class="text-center text-md-left">Services</h4>
                        <ul class="text-center text-md-left">
                            <li><a href="#">Flight</a></li>
                            <li><a href="#">Hotels </a></li>
                            <li><a href="#">Cab</a></li>
                            <li><a href="#">Destination Holidays</a></li>
                            
                        </ul>
                    </div>
                    <div class="col-12 col-md-4">
                        <h4 class="text-center text-md-left">We Accept</h4>
                        <img src="img/pay-opt.png"/>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="row">
            <div class="col-12 footer_notes">
                 <p class="whitecolor text-center w-100 wow fadeInDown">&copy; 2021 Airline Tickets Fare. All right reserved.</p>
            </div>
        </div>
    </div>
</footer>
<!-- End ui-block-01 -->

<!-- Footer -->
  <!--Scroll Top Start-->
      <span class="scroll-top-arrow"><i class="fas fa-angle-up"></i></span>
      <!--Scroll Top End-->
    <!-- JavaScript -->
      <script src="../vendor/js/bundle.min.js"></script>
      <!-- Plugin Js -->
      <script src="../vendor/js/jquery.fancybox.min.js"></script>
      <script src="../vendor/js/owl.carousel.min.js"></script>
      <script src="../vendor/js/swiper.min.js"></script>
      <script src="../vendor/js/wow.min.js"></script>
      <!-- custom script -->
      <script src="../vendor/js/contact_us.js"></script>
      <script src="js/datepicker.js"></script>
      <script src="js/script.js"></script>
           </form>
   </body>
</html>