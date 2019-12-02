<%-- 
    Document   : ctMarksStudentView
    Created on : Apr 16, 2019, 6:20:34 PM
    Author     : Shreyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% 
          Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","mysql");
                Statement st= con.createStatement();
                String S="select * from ctmarks where rollNo='"+session.getAttribute("rollno") +"'";
                ResultSet S1=st.executeQuery(S);
              
                  while(S1.next())
                  {
                    
        %>
    </head>
    <body style="align-self:center">
        <h1>Hello <% out.println(session.getAttribute("name")+" "+session.getAttribute("rollno")); %></h1>
<h2>YOUR SCORE CARD</h2>

<table style="width:30%" align="center" border="1">
  <tr align="center">
    <th>SUBJECT</th>
    <th>CT1</th> 
    <th>CT2</th>
    <th>AVG</th>
  </tr>
  <tr align="center">
    <th>AI</th>
    <td><% out.println(S1.getString("aict1")); %></td>
    <td><% out.println(S1.getString("aict2")); %></td>
    <td><% out.println(S1.getString("aiavg")); %></td>
  </tr>
  <tr align="center">
    <th>DAA</th>
    <td><% out.println(S1.getString("daact1")); %></td>
    <td><% out.println(S1.getString("daact2")); %></td>
    <td><% out.println(S1.getString("daaavg")); %></td>
  </tr>
  <tr align="center">
    <th>SP</th>
    <td><% out.println(S1.getString("spct1")); %></td>
    <td><% out.println(S1.getString("spct2")); %></td>
    <td><% out.println(S1.getString("spavg")); %></td>
  </tr>
    <tr align="center">
    <th>SE</th>
    <td><% out.println(S1.getString("sect1")); %></td>
    <td><% out.println(S1.getString("sect2")); %></td>
    <td><% out.println(S1.getString("seavg")); %></td>
  </tr>
    <tr align="center">
    <th>AJ</th>
    <td><% out.println(S1.getString("ajct1")); %></td>
    <td><% out.println(S1.getString("ajct2")); %></td>
    <td><% out.println(S1.getString("ajavg")); }%></td>
  </tr>

</table>
  <form action="logoutPro.jsp">
      <input type="submit" value="Log Out">
  </form>
</body>
</html>

</html>
