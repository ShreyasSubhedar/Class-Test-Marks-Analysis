<%-- 
    Document   : logoutPro
    Created on : Apr 16, 2019, 7:54:27 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
    </body>
</html>
<% 
session.invalidate();
response.sendRedirect("realIndex.html");
%>
