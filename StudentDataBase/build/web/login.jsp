<%-- 
    Document   : login
    Created on : Apr 14, 2019, 9:57:37 PM
    Author     : Shreyas
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: chartreuse">
        
        <script type="text/javascript">
            function validate(){
               var email=document.myForm.Email_Id.value;
               if(email=="")
               {
                   alert("Please Provide Email");
                   return false;
               }
                var pas=document.myForm.Password.value;
               if(pas.length>20)
               {
                   alert("Please Provide Valid Password");
                   return false;
               }
               if(pas=="")
               {
                   alert("Please Provide Valid Password");
                   return false;
               }
            }
            </script>
            <form action="check.jsp" method="POST" name="myForm">
<table align="center" cellpadding = "10">
    <tr><h1><center>LOGIN</center></h1></tr>
<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="text" name="Email_Id" maxlength="100" /></td>
</tr>
 <tr>
<td>PASSWORD</td>
<td><input type="password" name="Password" maxlength="20"/>
</td>
</tr>
 <!----- Submit and Reset ------------------------------------------------->
<tr>
  
<td colspan="2" align="center">
    <input type="submit" value="Login" onclick="return validate()">

</td>
</tr>
</table>
</form>
       
    </body>
</html>

