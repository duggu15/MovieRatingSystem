<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function msg_sent(){
                alert("ADMIN APPOINTED"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="2; url=ADMIN.jsp">
        <title>Update Profile</title>
    </head>
    <body>
        <%
            Date d=new Date();
            try{
        PreparedStatement pst,pst1;
        String un,dtt,sess_un;
        dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
        un=request.getParameter("t1");
        sess_un=(String)session.getAttribute("s1");
        
        pst=con.prepareStatement("update login set usertype='ADMIN' where uname=?");
			pst.setString(1,un);	
			int x=pst.executeUpdate();
			if(x==1)
			{
                         pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                        pst1.setString(1,sess_un);
                        pst1.setString(2,dtt);
                        pst1.setString(3,"Appointed Admin");
                        int x1=pst1.executeUpdate();
			}
		}
                catch(Exception e)
		{
			out.println("<h2 style=\"color:red;\">"+e+"</h2>");
		}
        
     
        
        %>
    </body>
</html>
