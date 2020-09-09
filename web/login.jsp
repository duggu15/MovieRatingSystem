

<%@page import="java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conne.jsp" %>
<!DOCTYPE html>
<html>
    <head>
         
        <script type="text/javascript">
            function msg_sent(){
                alert("Registration Details Submitted"); }
        </script>
        
        <script type="text/javascript">
            window.onload=msg_sent();
        </script>
        <meta http-equiv="Refresh" content="2; url=index.html">
         
        <title>login!!!</title>
    </head>
    <body>
        
    <%
        String un,pd,flag="ZERO",dt;
        PreparedStatement pst,pst1;
        un=request.getParameter("uname");
        pd=request.getParameter("psw");
        Date d=new Date();
        try{
            
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("Select fname,uname,password,usertype,email,phone from login");
            
            while(rs.next())
            {
                if(un.equals(rs.getString(2)))
                        {
                            flag="ONE";
                            if(pd.equals(rs.getString(3)))
                            {
                                flag="TWO";
                                
                            dt=(d.getYear()+1900)+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
                       
                            pst=con.prepareStatement("update login set login_dt=? where uname=?");
                            pst.setString(1,dt);	
                            pst.setString(2,un);
                            int x=pst.executeUpdate();
                            session.setAttribute("name",rs.getString(1));
                                                            
                                    if("ADMIN".equals(rs.getString(4)))
                                    {
                                        response.sendRedirect("ADMIN.jsp");
                                    }
                                    else
                                    {           pst1=con.prepareStatement("insert into acti_logs(uname,acti_date_time,acti) values(?,?,?)");
                                                pst1.setString(1,un);
                                                pst1.setString(2,dt);
                                                pst1.setString(3,"User Login");
                                                int x1=pst1.executeUpdate();
                                        response.sendRedirect("userlogin.jsp");
                                    }
                            session.setAttribute("s1", un);
                            session.setAttribute("s2", pd);
                            session.setAttribute("s3", dt);
                            session.setAttribute("n1", rs.getString(1));
                            session.setAttribute("type", rs.getString(4));
                            }
                               
                        }
                  } 
            
                if(flag=="ONE")
                {
                    out.println("<h2 style=\"color:red;\">Invalid ID or Password.</h2>");
                }
                if(flag=="ZERO")
                {
                    out.println("<h2 style=\"color:red;\">You have not registered yourself.</h2>");
                }
            
            con.close();
        }
        catch(Exception e)
        {
            out.println("<h2 style=\"color:red;\">"+e+"</h2>");
        }
        
        %>
    </body>
</html>
