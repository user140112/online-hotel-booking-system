
package com.controller;

import com.dao.NewUserRegisterDAO;
import com.module.NewUserRegister;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NewRegisterServlet", urlPatterns = {"/NewRegisterServlet"})
public class NewRegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewRegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewRegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
       String customerId=request.getParameter("cidTextBox");
       String firstName=request.getParameter("firstnameTextBox");
       String lastName=request.getParameter("lastnameTextBox");
       String contactNo=request.getParameter("contactTextBox");
       String email=request.getParameter("emailTextBox");
       String country=request.getParameter("countryTextBox");
       String guestNo =request.getParameter("guestTextBox");
       
        
       
        NewUserRegister newUserRegister=new NewUserRegister();
        newUserRegister.setUserId(customerId);
        newUserRegister.setFirstName(firstName);
        newUserRegister.setLastName(lastName);
        newUserRegister.setContactNo(contactNo);
        newUserRegister.setEmail(email);
        newUserRegister.setCountry(country);
        newUserRegister.setGuestNo(guestNo);
        
        NewUserRegisterDAO newUserRegisterDAO=new NewUserRegisterDAO();
        int rowNo= newUserRegisterDAO.getNewRegister(newUserRegister);
        
        if(rowNo>0){
            response.sendRedirect("Payment.jsp");
        }
        else{
            response.sendRedirect("Existance.jsp");
        }
        
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
