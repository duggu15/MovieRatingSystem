<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function msg_sent(){
                alert("Updation Request Submitted"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="1; url=profile.jsp">
        <title>Update Profile</title>
    </head>
    <body>
        <%
            Date d=new Date();
            try{
        PreparedStatement pst,pst1;
        String sun,n_pd,n_mn,upd,dtt,n_email,flag="ZERO",n_upi;
        dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
        sun=(String)session.getAttribute("s1");
        n_email=request.getParameter("t1");
        n_mn=request.getParameter("t3");
        n_pd=request.getParameter("t2");
        
        if(n_email.length()>0)
        {
        pst=con.prepareStatement("update login set email=? where uname=?");
			pst.setString(1,n_email);	
			pst.setString(2,sun);
			int x=pst.executeUpdate();
                        if(x==1)
			{
                        flag="ONE";
			}
        }
        if(n_mn.length()>0)
        {
        pst=con.prepareStatement("update login set phone=? where uname=?");
			pst.setString(1,n_mn);	
			pst.setString(2,sun);
			int x=pst.executeUpdate();
                        if(x==1)
			{
                        flag="ONE";
			}
        }
        if(n_pd.length()>0)
        {
        pst=con.prepareStatement("update login set password=? where uname=?");
			pst.setString(1,n_pd);	
			pst.setString(2,sun);
			int x=pst.executeUpdate();
                        if(x==1)
			{
                        flag="ONE";
			}
        }
       
        
                        if(flag.equals("ONE") && !sun.equals("21170169"))
			{
                        pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                        pst1.setString(1,sun);
                        pst1.setString(2,dtt);
                        pst1.setString(3,"Profile Updation");
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
