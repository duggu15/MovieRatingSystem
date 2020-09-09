
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
        
        <style>
            body{
                    background:#444141;
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
        
        
        <title>Messages || Contact US HTML</title>
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
              <li ><a href="ADMIN.jsp">Admin</a></li>
              
              
              <li class="active"><a href="check_contact_us_msg.jsp">User Messages</a></li>
              <li><a  href="#" onclick="document.getElementById('id04').style.display='block'" style="width:auto;">Delete Massage</a></li>
              <li><a href="check_activity_log.jsp">Activity Log</a></li>
              
             
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li style="margin:0; padding:0; "><a href="#"> <b>Welcome</b> <br>
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
        
        
        
            <div id="id04" class="modal">
	  
            <form class="modal-content animate" name="f2" method="post" action="delete_contact_msg.jsp" onsubmit="return confe()">
		<div class="imgcontainer">
		  <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
		  <h1> DELETE MESSAGES</h1>
		  
		</div>
	
		<div class="container">
		  <label for="uname"><b>Username</b></label><br>
		 <input type="email" name="t1" placeholder="Enter Email"  required><br>
                 <br>
	
		 
			
		  <button type="submit"  value="Appoint">DLELTE</button>
		  
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
        
        
        
        
        
        
        <form name="f2" method="post" action="delete_contact_msg.jsp">
                Delete Message
                        <input type="text" name="t1" placeholder="Enter Date-time" required>
                        <input type="submit" value="Delete">
            </form>
        
        <br><br><br><br>
        <table>
            <tr>
                <th><h2>Name</h2></th>
                <th><h2>Email</h2></th>
                <th><h2>Message</h2></th>
                <th><h2>Date-Time</h2></th>
            </tr>
            <tr style="border: 0px solid ;">
                <td style="border: 0px solid ;" >&nbsp;</td> 
            </tr>
            
        <%
        String sess_un,dt;
        int count=0;
        PreparedStatement pst1;
        sess_un=(String)session.getAttribute("s1");
        
        Date d=new Date();
        dt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
          
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select name,email,msg,mag_dt from contact_mag");
            
             pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dt);
                            pst1.setString(3,"Checked Contact_us HTML Messages");
                            int x1=pst1.executeUpdate();
            
            while(rs.next())
            {
                ++count;
                out.println("<tr>");
                out.println("<td><h3>"+rs.getString(1)+"</h3></td>");
                out.println("<td><h3>"+rs.getString(2)+"</h3></td>");
                
                out.println("<td><h3>"+rs.getString(3)+"</h3></td>");
                out.println("<td><h3>"+rs.getString(4)+"</h3></td>");
                out.println("</tr>");
            }
            if(count==0)
            {   out.println("<tr>");
                out.println("<td colspan=\"5\"><h1>Empty Message Box!!!</h1></td>");
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
