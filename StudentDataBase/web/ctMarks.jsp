<%-- 
    Document   : ctMarks
    Created on : Apr 16, 2019, 12:42:10 AM
    Author     : Shreyas
--%>

<%@page import="pro.PUREsessionB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
         String rollno=request.getParameter("Roll_No");
         String course=request.getParameter("Course");
          Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","mysql");
               Statement st=con.createStatement();
               String S="select course from records where rollNo='"+rollno+"'";
               ResultSet r=st.executeQuery(S);
               while(r.next())
               {
                   if(r.getString(1).equals(course))
                   {
                       /*FOR AI MARKS:-*/
                       String AICT1=request.getParameter("CT1_AI");
                       int aict1=Integer.parseInt(AICT1);
                       String AICT2=request.getParameter("CT2_AI");
                       int aict2=Integer.parseInt(AICT2);
                       String DAACT1=request.getParameter("CT1_DAA");
                       int daact1=Integer.parseInt(DAACT1);
                       String DAACT2=request.getParameter("CT2_DAA");
                       int daact2=Integer.parseInt(DAACT2);
                       String SPCT1=request.getParameter("CT1_SP");
                       int spct1=Integer.parseInt(SPCT1);
                       String SPCT2=request.getParameter("CT2_SP");
                       int spct2=Integer.parseInt(SPCT2);
                       String SECT1=request.getParameter("CT1_SE");
                       int sect1=Integer.parseInt(SECT1);
                       String SECT2=request.getParameter("CT2_SE");
                       int sect2=Integer.parseInt(SECT2);
                       String AJCT1=request.getParameter("CT1_ADV_JAVA");
                       int ajct1=Integer.parseInt(AJCT1);
                       String AJCT2=request.getParameter("CT2_ADV_JAVA");
                       int ajct2=Integer.parseInt(AJCT2);
                       PUREsessionB n= new PUREsessionB();
                       int a=n.getAvg(aict1, aict2);
                       int b=n.getAvg(daact1, daact2);
                       int c=n.getAvg(spct1, spct2);
                       int d=n.getAvg(sect1, sect2);
                       int e=n.getAvg(ajct1, ajct2);
                    //   String AIAVG=;
               Statement st1=con.createStatement();
               st1.executeUpdate("insert into ctmarks values('"+rollno+"','"+AICT1+"','"+AICT2+"','"+String.valueOf(a)+"','"+DAACT1+"','"+DAACT2+"','"+String.valueOf(b)+"','"+SPCT1+"','"+SPCT2+"','"+String.valueOf(c)+"','"+SECT1+"','"+SECT2+"','"+String.valueOf(d)+"','"+AJCT1+"','"+AJCT2+"','"+String.valueOf(e)+"')");
                      // out.println(a+"  "+b+"  "+c+"  "+d+"  "+e);
                       out.println(" <script type=\"text/javascript\">");
                   out.println("alert('Marks Successfully added')");
                   out.println("location='teacherPortal.jsp'");
                   out.println("</script>");
                   }
                   
               }
              
               {
                   out.println(" <script type=\"text/javascript\">");
                   out.println("alert('Roll No. or Course is not correct')");
                   out.println("location='teacherPortal.jsp'");
                   out.println("</script>");
               }
               
         
  %>      <h1>Hello World!</h1>
    </body>
</html>
