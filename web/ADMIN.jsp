
<%@page errorPage="error.jsp" import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="a.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/valid.js"></script>
    <script type="text/javascript" src="update.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function conf()
            {
            return confirm("Do you really want to delete your account ?");
            }
               function confe()
            {
            return confirm("Do you really want to appoint Admin ?");
            }
            function updt_alert()
            {
            return confirm("Alert: Once you submit your details for updation, you will be immediately logged out and your details will be sent for validation which could take 3 to 4 hours. Do you really want to proceed ?"); 
            }
            function logout()
            {
            return confirm("Are you sure ?"); 
            }
            </script>
            <style>
                body{
                    background:#444141;
                }
        .kjh{
	width:200px;
	height:150px;
	background:#000;
	color:#fff;
	top:31%;
	left:20%;
	position:absolute;
	transform:translate(-50%,-50%);
	box-sizing: border-box;
	padding:11px 11px;
        font-weight:bold;
        border: 2px solid red;
}
.kjh input{
	width:100%;
	margin-bottom:20px;
}

.kjh input[type="text"]{
	border:none;
	border-bottom: 1px solid #fff;
	background:transparent;
	outline:none;
	height:40px;
	color:#fff;
	font-size:16px;
}
.kjh  input[type="submit"]{
	border:none;
	outline:none;
	height:40px;
	background:#fb2525;
	color:#000;
        font-weight: bold;
	font-size:18px;
	border-radius:20px;
}
.kjh input[type="submit"]:hover{
	cursor:pointer;
	background:#ffc107;
	color:#000;
}
.kjh a:hover{
	color:#ffc107;
}
td,tr{
            color: #ffff99;
        text-align: center;
        border: 2px solid ;
        border-color:red;
        height: 50px;
        word-wrap: break-word;
        margin: 5px;
        }
        
        th{
            color: #99ffcc;
            text-align: center; 
            height: 45px;
            border: 2px solid ;
            text-decoration: underline;
            border-color:red;
        }
        table {
        table-layout: fixed;
        align-content: center;
        background:#111111;
	color:#fff;
        border: 1px solid red;
	box-sizing: border-box;
	padding:10px 10px;
        width:100%;
        }
            </style>
        <title>ADMIN PANEL</title>
    </head>
    <body>
        <% 
            String sess_un,sess_pd,sess_logTime,sess_nm,first_nm,dt;
            sess_nm=(String)session.getAttribute("n1");
            sess_un=(String)session.getAttribute("s1");
            sess_pd=(String)session.getAttribute("s2");
            sess_logTime=(String)session.getAttribute("s3");
            first_nm=sess_nm;
            
        %>
       
        
            
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
              <li class="active"><a href="ADMIN.jsp">Admin</a></li>
              <li ><a href="#" onclick="document.getElementById('id05').style.display='block'">Update Profiles</a></li>
              
              <li ><a href="check_contact_us_msg.jsp">User Messages</a></li>
              <li><a href="check_activity_log.jsp">Activity Log</a></li>
              <li><a  href="#" onclick="document.getElementById('id03').style.display='block'" >Delete User</a></li>
              <li><a  href="#" onclick="document.getElementById('id04').style.display='block'" >Appoint Admin</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                
                
              <li style="margin:0; padding:0; "><a href="profile.jsp"> <b>Welcome</b> <br>
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
        
        <div id="id03" class="modal">
	  
            <form class="modal-content animate" name="f2" method="post" action="delete_another_prof.jsp" onsubmit="return conf()">
		<div class="imgcontainer">
		  <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
		  <h1> DELETE USER PROFILE</h1>
		  
		</div>
	
		<div class="container">
		  <label for="uname"><b>Username</b></label><br>
		 <input type="text" name="t1" placeholder="Enter his User Name" maxlength="8" required>
	
		 
			
		  <button type="submit" value="Delete">Delete</button>
		  
		</div>
	
		<div class="container" style="background-color:#f1f1f1">
		  <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
		 
		</div>
	  </form>
	</div>
	
	<script>
	// Get the modal
	var modal = document.getElementById('id03');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	</script>
        
        
           <div id="id04" class="modal">
	  
            <form class="modal-content animate" name="f2" method="post" action="appointadmin.jsp" onsubmit="return confe()">
		<div class="imgcontainer">
		  <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
		  <h1> APPOINT ADMIN</h1>
		  
		</div>
	
		<div class="container">
		  <label for="uname"><b>Username</b></label><br>
		 <input type="text" name="t1" placeholder="Enter his User Name" maxlength="8" required>
	
		 
			
		  <button type="submit"  value="Appoint">Appoint</button>
		  
		</div>
	
		<div class="container" style="background-color:#f1f1f1">
		  <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
		 
		</div>
	  </form>
	</div>
	
	<script>
	// Get the modal
	var modal = document.getElementById('id04');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	</script>
        
        
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
        
        
      
        
        <br><br><br><br><br>
             <table>
            <tr>
                <th><h3>USER NO.</h3></th>
                 <th><h3>USER ID</h3></th>
                <th><h3>NAME</h3></th>
                <th><h3>Email</h3></th>
                <th><h3>Mobile Number</h3></th>
               
                
            </tr>
            <tr style="border: 0px solid ;">
                <td style="border: 0px solid ;" >&nbsp;</td> 
            </tr>
            
        <%
 
        int count=0;
        PreparedStatement pst1;
        sess_un=(String)session.getAttribute("s1");
        
        Date d=new Date();
        dt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
          
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select userno,uname,fname,email,phone from login");
            
              pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dt);
                            pst1.setString(3,"Admin login");
                            
                            int x1=pst1.executeUpdate();
            
            while(rs.next())
            {
                ++count;
                out.println("<tr>");
                out.println("<td><h4>"+rs.getString(1)+"</h4></td>");
                out.println("<td><h4>"+rs.getString(2)+"</h4></td>");
                out.println("<td><h4>"+rs.getString(3)+"</h4></td>");
                out.println("<td><h4>"+rs.getString(4)+"</h4></td>");
                out.println("<td><h4>"+rs.getString(5)+"</h4></td>");
               
                out.println("</tr>");
            }
            if(count==0)
            {   out.println("<tr>");
                out.println("<td colspan=\"6\"><h1>No users found!!!</h1></td>");
                out.println("</tr>");
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
