
<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Message</title>
    </head>
    <body>
        <% 
            String sess_un,emai,dtt;
            emai=(String)request.getParameter("t1");
            Date d=new Date();
            dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
            sess_un=(String)session.getAttribute("s1");
            PreparedStatement ps,pst1;
            
        try{
            
            
            
            ps=con.prepareStatement("delete from contact_mag where email='"+emai+"';");
            int x=ps.executeUpdate();
            if(x==1)
            {
                pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                pst1.setString(1,sess_un);
                pst1.setString(2,dtt);
                pst1.setString(3,"Contact us msg Deletion");
                int x1=pst1.executeUpdate();
                response.sendRedirect("check_contact_us_msg.jsp");
            }
        }
        catch(Exception e)
        {
            out.println("<h2 style=\"color:red;\">"+e+"</h2>");
        }
            %>
    </body>
</html>
