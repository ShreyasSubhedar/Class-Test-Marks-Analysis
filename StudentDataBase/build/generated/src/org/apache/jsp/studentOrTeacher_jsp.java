package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class studentOrTeacher_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <form  method=\"POST\">\n");
      out.write("<table align=\"center\" cellpadding = \"10\">\n");
      out.write(" \n");
      out.write("<!----- Email Id ---------------------------------------------------------->\n");
      out.write("<tr>\n");
      out.write("<td>EMAIL ID</td>\n");
      out.write("<td><input type=\"text\" name=\"Email_Id\" maxlength=\"100\" required /></td>\n");
      out.write("</tr>\n");
      out.write(" <tr>\n");
      out.write("<td>PASSWORD</td>\n");
      out.write("<td><input type=\"password\" name=\"Password\" maxlength=\"30\" required/>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("        ");

              String email=request.getParameter("Email");
            String password=request.getParameter("Password");
            /*All about Database Work------------------------------------------------------
            ------------*/
            Cookie cookie = new Cookie("Uname",email);
            if(email.equals("sg"))
            response.sendRedirect("student.jsp");
            else
            response.sendRedirect("teacher.jsp");
  
            
            
        
      out.write("\n");
      out.write("        <!----- Submit and Reset ------------------------------------------------->\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"2\" align=\"center\">\n");
      out.write("<input type=\"submit\" value=\"Login\">\n");
      out.write("<a href=\"Login.html\">Already Registered??!</a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write(" \n");
      out.write("</form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
