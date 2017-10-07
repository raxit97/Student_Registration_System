package com.servlet;

import com.java.JDBC;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends HttpServlet {
    
    String username,password,cpassword,cgpa,gender,department,year,phno,regno;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            username = request.getParameter("uname");
            password = request.getParameter("passwd");
            cpassword = request.getParameter("cpasswd");
            cgpa = request.getParameter("cgpa").toString();
            gender = request.getParameter("gender");
            department = request.getParameter("department");
            year = request.getParameter("year");
            phno = request.getParameter("phno");
            regno = request.getParameter("regno");
            HttpSession session = request.getSession(false);
            session.setAttribute("name", username);
            if(username.equals("") || password.equals("") || cpassword.equals("") || cgpa.equals("") || gender.equals("") || department.equals("") || phno.equals("") || regno.equals("")){
                out.print("<p style=\"color:red; position : relative; top:560px; text-align:center;\">Enter all the fields</p>");  
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");  
                rd.include(request,response); 
            }
            else if(JDBC.insert(username, password, cgpa, gender, department, year, phno, regno) == 1){  
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                rd.forward(request,response);  
            }
            else{
                out.print("<p style=\"color:red; position : relative; top:560px; text-align:center;\">Registration failed</p>");  
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");  
                rd.include(request,response);  
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
