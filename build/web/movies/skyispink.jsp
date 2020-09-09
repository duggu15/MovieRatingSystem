

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Movie Rating System</title>
  <script type="text/javascript" src="em.js"></script>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../a.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/valid.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                padding: 0;
                margin: 0;
                background:#444141;
            }
            .containe{
                
                width: 100%;
                margin: 0 auto;
            }
            .cover-profile{
                width: 100%;
                border: 1px solid red;
                height: 50px;
            }
            .cover-profile .cover{
                top: 70px;
                widows: 100%;
                height: 350px;
                padding-bottom: 1px;
                border: 0px solid black;
            }
            .cover-profile .cover img{
                width: 100%;
                height: 350px;
                
            }
            .cover-profile .profile{
                width: 350px;
                height: 500px;
                margin: 30px;
                border: 0px solid white;
                position: relative;
                top:-180px;
                left: 25px;
                border-radius: 3px; 
                float: left;
            }
            .cover-profile .profile img{
                width: 350px;
                height: 500px;
                border-radius: 10px;
                box-shadow: 0 10px 15px rgba(0, 0, 0, 0.8);
            }
            .cover-profile .name{
                float: left;
                display: inline-block;
                position: relative;
                left: 30px;
                color: red;
                top:25px;
            }
            .upload{
                widows: 50%;
                margin: auto;    
            }
            .name h1{
                color: white;
                font-size: 45px;
                text-align: left;
                font-family: sans-serif;
            }
            .name p{
                color: wheat;
                font-size: 20px;
                text-align: left;
                font-family: sans-serif;
            }
            .name p b{
                color: white;
                font-size: 20px;
                text-align: left;
                font-family: sans-serif;
            }
            .name h3 b{
               color: white;
                font-size: 20px;
                float: left;
                font-family: sans-serif; 
            }
            x-star-rating{
                font-family: 'Ionicons';
                font-size: 20px;
                display: inline-flex;
                float: left;
                margin-bottom: 20px;
            }
            x-star-rating > .star::after{
                content: '\f3ae';
                color: wheat;
                
            }
            x-star-rating > .star.full::after{
                content: '\f2fc';
                color: yellow;
                
            }
            video{
                margin: 20px;
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
                    <img src="../images/lobo.jpg" alt="logo" class="brand-image">
                    
                </div>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="../userlogin.jsp">Home</a></li>
              
              <li><a href="../logincontact.jsp">Contact Us</a></li>
              <li><a href="../loginabout.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li style="margin:0; padding:0; "><a href="../profile.jsp"> <b>Welcome</b> <br>
                    <%
                    String data=session.getAttribute("name").toString();
                    out.print(data);
                    %>
              </a></li>
              <li><a  href="../logout.jsp" onclick="return logout()" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
 </header>
        
        <section>
            <div class="containe">
                <div class="cover-profile">
                    <div class="cover" style="width:100%;">
                        <img src="..\images\poster\aladdin.jpg">
                    </div>
                    <div class="profile">
                        <img src="..\images\skyispink.jpg">
                    </div>
                    <div class="name">
                        <h1> The Sky is Pink</h1><hr>
                        <p>Based on the life of motivational speaker Aisha Chaudhary, who died in 2015 when she was 18.<br>
                            Aisha tells the love story of her parents over a period of 25 years.
</p>
                        <p><b>Release date:&nbsp</b>11 October 2019 (India) </p>
                        <p><b>Directors:&nbsp</b>Shonali Bose </p>
                        <p><b>Boxoffice Collection:&nbsp</b>34.41 crore </p>
                        <p><b>Language:&nbsp</b> Hindi</p>
                        <h3> <b>Rating:&nbsp&nbsp</b> 
                        <x-star-rating>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star full"></div>
                            <div class="star "></div>
                        </x-star-rating>
                        </h3><br>
                        </div> 
                        
                        <video width="1000" controls>
                            <source src="../video/SkyisPink.mp4" type="video/mp4" >
  
 
                            </video>
                        <div class="upload">
                    <form>
                        <textarea placeholder="write your coment" style="width:1000px; height: 100px; background: wheat; float: right; margin-right:50px; font-size: 25px; "></textarea><br><br><br><br><br><br>
                    <button type="submit" style="width: 150px; float: right; margin-right: 50px; margin-bottom: 20px;">Send</button>
                    </form>
                     
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
                </div>
                             
            </div>
            
        </section>
        
    </body>
</html>
