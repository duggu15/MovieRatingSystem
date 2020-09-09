
<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function msg_sent(){
                alert("Message Sent"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="1; url=contact.html">
        <title>Contact user</title>
    </head>
    <%
        PreparedStatement pst;
        String name,email,dtt,message;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        message=request.getParameter("t4");
       
        Date d=new Date();
        
        dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
        
        try{
                               
            pst=con.prepareStatement("insert into contact_mag(name,email,msg,mag_dt) values(?,?,?,?)");
            pst.setString(1,name);
            pst.setString(2,email);
         
            pst.setString(3,message);
            pst.setString(4,dtt);
            int x=pst.executeUpdate();
            
        }
        catch(Exception e)
        {
            out.println("<h2 style=\"color:red;\">"+e+"</h2>");
        }
        %>
</html>
