<%@page errorPage="error.jsp" import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
<head>
    
      
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="a.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/valid.js"></script>
	<title> Profile</title>
        <style>
            body{
                background:#444141;
            }
            td{
                margin: 5px;
            }
    table{
    font-style: italic;
    margin-top: 5%;
    margin-left: 25%;
    width: 45%;
    background:#000;
    color:#fff;
    border: 3px solid red;
    box-sizing: border-box;
    padding:2% 3%;
}
h1{
	color:#fb2525;
	margin:0;
	width:100%;
	padding:0 0 20px;
	text-align:center;
	font-size:50px;
        right: 20px;
}
.a1{
	width:150px;
	height:150px;
	border-radius:50%;
	position:absolute;
	top:  12%;
        left: 58%;
        border-top: 3px solid #ff0033;
        border-left: 3px solid #ff0033;
        border-right: 3px solid #ff0033;
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
                 <li ><a href="#" onclick="document.getElementById('id05').style.display='block'">Update Profiles</a></li>
              
              <li><a href="logincontact.jsp">Contact Us</a></li>
              <li><a href="loginabout.jsp">About Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active" style="margin:0; padding:0; "><a href="profile.jsp"> <b>Welcome</b> <br>
                    <%
                    String data=session.getAttribute("name").toString();
                    out.print(data);
                    %>
              </a></li>
              <li><a  href="logout.jsp" onclick="return logout()" ><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
 </header>
    
              
              <div id="id05" class="modal">
			  
                            <form name="f1" class="modal-content animate" method="post" action="updatedata.jsp" onsubmit="return validate()">
				<div class="imgcontainer">
				  <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
				  <h1>PROFIlLE UPDATION</h1>
				  
				</div>
			
				<div class="container">
					<label for="uname"><b>New E-mail ID:</b></label><br>
					<input type="email" placeholder="Enter Full nmae" name="t1" required><br>

					<label for="uname"><b>New Mobile Number:</b></label><br>
				  <input type="text" placeholder="New Mobile Number" name="t3" maxlength="10" required><br>
          
				  <label for="psw"><b>New Password:</b></label><br>
				  <input type="password" placeholder="Enter Password" name="t2" required onkeyup="strength()"><br>
                                            <p class="cl" id="myloc"></p><br>

				  <label for="uname"><b>confirm New password:</b></label><br>
				  <input type="password" placeholder="Enter confirm password" name="t4" required><br>

				  
				  <button type="submit" value="Update">Update</button>
				  
				</div>
			
				<div class="container" style="background-color:#f1f1f1">
				  <button type="button" onclick="document.getElementById('id05').style.display='none'" class="cancelbtn">Cancel</button>
                              
				 
				</div>
			  </form>
			</div>
			
			<script>
			// Get the modal
			var modal = document.getElementById('id05');
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
			</script>
        
    
    
    
    <br><br><br><br>
    <h1>USER INFO</h1>
    <table style=" box-shadow: 0 10px 15px rgba(0, 0, 0, 0.8);  border-radius: 10px;" >
        <%
        String sess_un,dt,target;
        PreparedStatement pst1;
        sess_un=(String)session.getAttribute("s1");
        target=request.getParameter("t1");
        Date d=new Date();
        dt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
          
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select fname,uname,email,phone,login_dt from login where uname='"+sess_un+"';");
            
             pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dt);
                            pst1.setString(3,"Checked His profile");
                            int x1=pst1.executeUpdate();
            
            while(rs.next())
            {
                out.println("<tr><td><h3><b>NAME:</b></h3><br>&nbsp</td><td><h3>&nbsp "+rs.getString(1)+"</h3><br>&nbsp</td></tr>");
                out.println("<tr><td><h3><b>USER NAME:</b></h3><br>&nbsp</td><td><h3>&nbsp "+rs.getString(2)+"</h3><br>&nbsp</td></tr>");
                out.println("<tr><td><h3><b>E-MAIL:</b></h3><br>&nbsp</td><td><h3>&nbsp "+rs.getString(3)+"</h3><br>&nbsp</td></tr>");
                out.println("<tr><td><h3><b>PHONE NUMBER:</b></h3><br>&nbsp</td><td><h3>&nbsp "+rs.getString(4)+"</h3><br>&nbsp</td></tr>");
                out.println("<tr><td><h3><b>LAST LOGIN:</b></h3><br>&nbsp</td><td><h3>&nbsp "+rs.getString(5)+"</h3><br>&nbsp</td></tr>");
            }
             con.close();
            }
                        
        catch(Exception e)
        {
            out.println("<h2 style=\"color:red;\">"+e+"</h2>");
        }
        
        %>
         </table>
    </body>
</html>
