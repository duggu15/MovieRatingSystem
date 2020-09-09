
<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function msg_sent(){
                alert("DELETE REQUEST SUBMITTED"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="0; url=ADMIN.jsp">
        <title>Delete Other User Profile</title>
    </head>
    <body>
        <% 
            String sess_un,dtt,target;
            Date d=new Date();
            dtt= (d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();       
            PreparedStatement ps,ps2,ps3,pst1;
            sess_un=(String)session.getAttribute("s1");
            target=(String)(request.getParameter("t1"));
            try{
            if(target.equals("duggu"))
            {
                out.println("<h1>This Account can not be deleted</h1>");
            }
            else if(sess_un.equals("duggu") && !(target.equals("duggu")))
            {
                
            
            
            ps3=con.prepareStatement("delete from acti_logs where uname='"+target+"';");
            int x3=ps3.executeUpdate();
            ps=con.prepareStatement("delete from login where uname='"+target+"';");
            int x=ps.executeUpdate();
            if(x!=0 && x3!=0)
            {
              pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dtt);
                            pst1.setString(3,"Deleted Another User");
                            int x1=pst1.executeUpdate();
            }
            else
            {
                out.println("<h1>ERROR: Account doesn't exists</h1>");
            }
            }
            else
            {
                Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select type from login where uname='"+target+"';");
            while(rs.next())
            {
                if("user".equals(rs.getString(1)) || sess_un.equals(target))
                {
               
            ps3=con.prepareStatement("delete from acti_logs where uname='"+target+"';");
            int x3=ps3.executeUpdate();
            ps=con.prepareStatement("delete from login where uname='"+target+"';");
            int x=ps.executeUpdate();
            if(x!=0 && x3!=0)
            {
             pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                            pst1.setString(1,sess_un);
                            pst1.setString(2,dtt);
                            pst1.setString(3,"Deleted Another User");
                            int x1=pst1.executeUpdate();
            }
            else
            {
                out.println("<h1>ERROR: Account does not exists</h1>");
            }
                }
            else
                {
                    out.println("<h1>ERROR: Can't delete an ADMIN account</h1>");
                }
                }
            
            }
        }
        catch(Exception e)
        {
            out.println("<h2 style=\"color:red;\">"+e+"</h2>");
        }
            
            %>
    </body>
</html>
