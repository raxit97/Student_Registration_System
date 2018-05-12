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

public class Login extends HttpServlet {
    
    String username,password,name_or_reg;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            name_or_reg = request.getParameter("uname");
            username = JDBC.checkNameOrReg(name_or_reg);
            password = request.getParameter("passwd");
            HttpSession session = request.getSession(false);
            if(session!=null)
                session.setAttribute("name", username);
            if(name_or_reg.equals("") || password.equals("")){
                out.print("<p style=\"color:red; position : relative; top:370px; left:500px;\">Enter your username and password</p>");  
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
                rd.include(request,response); 
            }
            else if(name_or_reg.equals("administrator") && password.equals("ssn123")){
                RequestDispatcher rd=request.getRequestDispatcher("display.jsp");  
                rd.forward(request,response);  
            }
            else if(JDBC.validate(username, password)){  
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                rd.forward(request,response);  
            } 
            else{  
                out.print("<p style=\"color:red; position : relative; top:370px; left:500px;\">Sorry username or password error</p>");  
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
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
