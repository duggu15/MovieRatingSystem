
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
    <script type="text/javascript" src="em.js"></script>
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
	background:#000;
	color:#fff;
        border: 1px solid red;
	box-sizing: border-box;
	padding:10px 10px;
        width:100%;
        }
        
        </style>
        <title>Activity Log</title>
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
              
              
              <li ><a href="check_contact_us_msg.jsp">User Messages</a></li>
              <li class="active" ><a href="check_activity_log.jsp">Activity Log</a></li>
              
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
        <br><br><br><br>
        <table>
            <tr>
                <th><h2>User Name</h2></th>
                <th><h2>Date-Time</h2></th>
                <th><h2>Activity</h2></th>
                
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
            ResultSet rs=stmt.executeQuery("Select uname,acti_date_time,acti from acti_logs");
            
            
            pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                        
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dt);
                            pst1.setString(3,"Checked Activity Log");
                            int x1=pst1.executeUpdate();
            
            while(rs.next())
            {
                ++count;
                out.println("<tr>");
                out.println("<td><h3>"+rs.getString(1)+"</h3></td>");
                out.println("<td><h3>"+rs.getString(2)+"</h3></td>");
                out.println("<td><h3>"+rs.getString(3)+"</h3></td>");
                out.println("</tr>");
            }
            if(count==0)
            {   out.println("<tr>");
                out.println("<td colspan=\"3\"><h1>NO ACTIVITY FOUND!!!</h1></td>");
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
