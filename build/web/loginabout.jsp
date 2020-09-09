
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
     background:#444141;
}

.flip-card {
    border-radius: 10px;
  background-color: transparent;
  width: 350px;
  height: 400px;
  perspective: 1000px;
}

.flip-card-inner {
    border-radius: 10px;
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 10px 15px rgba(0,0,0,0.8);
}

.flip-card:hover .flip-card-inner {
    border-radius: 10px;
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
    border-radius: 10px;
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
    border-radius: 10px;
  background-color: #bbb;
  color: black;
}

.flip-card-back {
    border-radius: 10px;
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
* {
    
  box-sizing: border-box;
}

.column {
  float: left;
  width: 50%;
  padding: 20px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>

    
</head>
<body>
    
 <header>
<nav class="navbar navbar-inverse">
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
              
              <li><a href="logincontact.jsp">Contact Us</a></li>
              <li class="active"><a href="loginabout.jsp">About Us</a></li>
            </ul>
              <ul class="nav navbar-nav navbar-right">
                  <li style="margin:0; padding:0; "><a href="profile.jsp"> <b>Welcome</b> <br>
                    <%
                    String data=session.getAttribute("name").toString();
                    out.print(data);
                    %>
                    
                    
                    </a></li>
              <li><a href="logout.jsp"  style="width:auto;"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
 </header>
    
    <br><br><br><br><br><br>
    <h1 style="color: white; font-size: 45px; text-shadow: 5px 5px 8px rgb(0, 0, 0);"> OUR TEAM MEMBERS</h1>
    <div class="row">
        <div class="column">
        

            <div class="flip-card" style="float: right; margin: 25px; ">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="images/akash.jpg" alt="Avatar" style="width:350px;height:400px; border-radius: 10px;">
    </div>
    <div class="flip-card-back">
        <h1 style="font-size:40px;">Akash Kushwaha</h1> 
        <h1 style="font-size:35px;">Section :A</h1>
      <h1 style="font-size:35px;">Group Leader</h1> 
      <h1 style="font-size:35px;">Roll no:1701010017</h1>
    </div>
  </div>
</div>
        </div>
<div class="column">
        

<div class="flip-card" style="float: left; margin: 25px; ">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="images/ak.jpg" alt="Avatar" style="width:350px;height:400px; border-radius: 10px;">
    </div>
    <div class="flip-card-back">
      <h1 style="font-size:40px;">Akash Verma</h1> 
      <h1 style="font-size:35px;">Section : A</h1>
      
      <h1 style="font-size:35px;">Group member</h1>
      <h1 style="font-size:35px;">Roll no:1701010019</h1>
    </div>
  </div>
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


