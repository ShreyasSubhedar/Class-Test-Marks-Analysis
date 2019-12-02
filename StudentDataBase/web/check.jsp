<%-- 
    Document   : check
    Created on : Apr 14, 2019, 9:58:05 PM
    Author     : Shreyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
    <%
    Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","mysql");
               Statement st=con.createStatement();
               String ema=request.getParameter("Email_Id");
               String pass=request.getParameter("Password");
               String S="select password,name,rollNo from records where email='"+ema+"'";
               ResultSet S1=st.executeQuery(S);
               if(ema.equals("Admin")&&pass.equals("jnec2018"))
               {
                   response.sendRedirect("teacherPortal.jsp");
               }
               else{
               while(S1.next()){
               if(S1.getString(1).equals(pass)){
                   out.println("OK YOU ARE A MEMBER");  
               session.setAttribute("name",S1.getString(2));
               session.setAttribute("rollno",S1.getString(3));
               //out.println(S1.getString(2));
               response.sendRedirect("studentInfoPortal.jsp");
               }
               
                else
               {
                   out.println(" <script type=\"text/javascript\">");
                   out.println("alert('Username or Password is not valid')");
                   out.println("location='login.jsp'");
                   out.println("</script>");
               }
               }
               {
                   out.println(" <script type=\"text/javascript\">");
                   out.println("alert('Username or Password is not valid')");
                   out.println("location='login.jsp'");
                   out.println("</script>");
               }
               }
                          
              

               
    %>
</html>
