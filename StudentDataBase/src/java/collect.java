/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shreyas
 */
@WebServlet(urlPatterns = {"/collect"})
public class collect extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet collect</title>");            
            out.println("</head>");
            out.println("<body>");
                   
            out.println("<h1>Servlet collect at " + request.getContextPath() + "</h1>");
            String name=request.getParameter("First_Name");
               String password=request.getParameter("Password");
            String surname=request.getParameter("Last_Name");
            String rollno=request.getParameter("Roll_No");
            String DOB=request.getParameter("Birthday_day")+"-"+request.getParameter("Birthday_Month")+"-"+request.getParameter("Birthday_Year");
            String Email=request.getParameter("Email_Id");
            String MobNo=request.getParameter("Mobile_Number");
            String Gender=request.getParameter("Gender");
            String Address=request.getParameter("Address");
            String City =request.getParameter("City");
            String PinCode=request.getParameter("Pin_Code");
            String State=request.getParameter("State");
            String Course=request.getParameter("Course");
           String[] Hobbies = request.getParameterValues("Hobby");
         /*  out.println(name+"<br/>");
           out.println(surname+"<br/>");
           out.println(DOB+"<br/>");
           out.println(Email+"<br/>");
           out.println(MobNo+"<br/>");
           out.println(Gender+"<br/>");
           out.println(Address+"<br/>");
           out.println(City+"<br/>");
           out.println(PinCode+"<br/>");
           out.println(State+"<br/>");
           out.println(Course+"<br/>");
            for (String Hobbie : Hobbies) {
                out.println(Hobbie + "<br/>");
            }*/
         try{
         
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","mysql");
               Statement st=con.createStatement();
               st.executeUpdate("insert into records values('"+name+"','"+surname+"','"+DOB+"','"+Email+"','"+password+"','"+MobNo+"','"+Gender+"','"+Address+"','"+City+"','"+PinCode+"','"+State+"','"+Hobbies[0]+"','"+Course+"','"+rollno+"')");
              // out.println("COmplete Successfully!!");
               response.sendRedirect("login.jsp");
                       }
            catch(IOException | ClassNotFoundException | SQLException e){
out.println(e);
        } 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
