


<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script type="text/javascript">
            function msg_sent(){
                alert("Registration Details Submitted"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="1; url=userlogin.jsp">
        
        <title>Registration!!!</title>
    
    </head>
    <body>
       <%
           PreparedStatement pst,pst1;
        String un,pass,fn,email,phone,dt;
        fn=request.getParameter("t1");
        un=request.getParameter("t2");
        pass=request.getParameter("t3");
        email=request.getParameter("t5");
        phone=request.getParameter("t6");
        Date d=new Date();
            dt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds(); 
        try{
        
        pst=con.prepareStatement("insert into login(fname,uname,password,email,phone) values(?,?,?,?,?)");
			pst.setString(1,fn);	
			pst.setString(2,un);
			pst.setString(3,pass);
                        pst.setString(4,email);
                        pst.setString(5,phone);
      
                        int x=pst.executeUpdate();
                        session.setAttribute("name",fn);
			if(x==1)
			{
			 pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                                                pst1.setString(1,un);
                                                pst1.setString(2,dt);
                                                pst1.setString(3,"User Register");
                                                int x1=pst1.executeUpdate();
                         
			}			
                }
                catch(Exception e)
		{out.println("please check the data "+e.getMessage());
		}       
       %>
    </body>
</html>
