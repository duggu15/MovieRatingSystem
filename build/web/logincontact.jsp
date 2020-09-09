<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="a.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/valid.js"></script>
    <script type="text/javascript" src="em.js"></script>
    
  <style>
      body{
        background:#444141   
          }
      .contact-form{
          
          background: #332f2f;
          color: whitesmoke;
          margin-top:100px;
          padding: 20px;
          box-shadow: 0px 0px 10px 3px graytext;
      }
      textarea{
          float:right ; 
      }
      .container input[type=text], input[type=email] {
    
     }
      
  </style>
</head>
<body>
    
 <header>
<nav class="navbar navbar-inverse" >
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <div class="header-imges">
                    <img src="images/lobo.jpg" alt="logo" class="brand-image">
                    
                </div>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li ><a href="userlogin.jsp">Home</a></li>
              
              <li class="active"><a href="logincontact.jsp">Contact Us</a></li>
              <li><a href="loginabout.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li style="margin:0; padding:0; "><a href="profile.jsp"> <b>Welcome</b> <br>
                    <%
                    String data=session.getAttribute("name").toString();
                    out.print(data);
                    %>
                    
                    
                    </a></li>
              <li><a href="logout.jsp" style="width:auto;"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
 </header>
      
    <div class="container contact-form" >
        <h1 style="font-size: 50px; color: rgb(0, 89, 255);"> Contact form</h1>
        <hr>
        <div class="row">
            <div class="col-md-6 ">
                <address>Address:- UCER naini Prayagraj, Uttar Pradesh, India</address>
                <p><b>Email:-</b> akashraj1900@gmail.com</p>
                <p><b>Email:-</b>aakashverma123.va@gmail.com</p>
                <p><b>Phone:-</b> +91&nbsp7800201586</p>
                <p><b>Phone:-</b> +91&nbsp8707504528</p>
            </div>
            <div class="col-md-6">
                <form method="post" action="user_contact.jsp">
                <div class="form-group">
                    <label>Name &nbsp&nbsp&nbsp&nbsp&nbsp</label>
                    <input type="text" class="form-control" name="t1" placeholder="Enter Your Name" style="width: 70%;">
                </div>
                <div class="form-group">
                    <label>Email &nbsp&nbsp&nbsp&nbsp&nbsp</label>
                    <input type="email" class="form-control" name="t2" placeholder="Enter Your Email ID" style="width: 70%;">
                </div>
                <div class="form-group">
                    <label>Massage</label>
                    <textarea class="form-control" rows="10" name="t4" placeholder="Enter Your Massage" style=" width: 70%; margin-bottom: 10px; margin-right: 45px; "></textarea>
                </div>
                <div class="form-group ">
                    <button class="btn btn-primary btn-block" style="width: 30%; float: right; margin-right: 45px;" type="submit"> Send </button>
                </div>
                </form>
                
            </div>
            
        </div>    
        
        
        
    </div>
    <div>
      <footer >
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
              <h2>Movie Rating</h2>
              <p>The Movie Rating  system provides us to have the idea about the upcoming movies,the reactions of the people and also about the content of the movie in brief.
                  the website includes the short trailer of movies which gives the clear cut of idea of the concern movies. 
              </p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                <h2>Divinector</h2>
                <ul>
                  <li><a href="userlogin.jsp">Home</a></li>
                  <li><a href="loginabout.jsp">About Us</a></li>
                  <li><a href="logincontact.jsp">Contact Us</a></li>
                  <li ><a href="#"> <b>Welcome</b> 
                    <%
                    String dat=session.getAttribute("name").toString();
                    out.print(dat);
                    %>
                    
                    
                    </a></li>
                  <li><a href="logout.jsp" style="width:auto;">Logout</a></li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
              <h2>Follow Us</h2>
              <p> This helps our users to stay connected to us for the latest and upcoming movies, users can connect to us using social media.
                  stay tuned to us via facebook, twitter, Instagram, Linkedin, Pinterest.
              </p>
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-pinterest"></i></a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
              <h2>Our Newletter</h2>
              <p>Please Follow us and subscribe us for the latest news regarding movies. kindly provide us with your email
                  so that we can send updates to you as soon as possible.
                 </p>
                 <form action="">
                   <input type="email" placeholder=" Email">
                   <input type="submit" value="subscribe">
                 </form>
            </div>
          </div>
        </div>
      </div>
      <p class="footer-bottom-text">All Right reserved by &copy;Divinector.2019</p>
    </footer>
    
    </div>


    
    
    
    
    
    
    
    
    
    
    </body>
</html>
