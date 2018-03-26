
package com.controller;

import com.dao.RemoveCustomerDAO;
import com.module.RemoveCustomer;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SUJAN
 */
@WebServlet(name = "RemoveCustomerServlet", urlPatterns = {"/RemoveCustomerServlet"})
public class RemoveCustomerServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RemoveCustomerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RemoveCustomerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        String r_customerId=request.getParameter("r_customerIdTextBox");
        String r_date=request.getParameter("r_dateTextBox");
        
                String myCheckOutDate=null;
        
        try {
            Date date1=new SimpleDateFormat("yyyy-mm-dd").parse(r_date);
            SimpleDateFormat sFormat=new SimpleDateFormat("yyyy-mm-dd");
            myCheckOutDate=sFormat.format(date1);
        } catch (ParseException ex) {
            Logger.getLogger(NewRegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RemoveCustomer removeCustomer=new RemoveCustomer();
        removeCustomer.setR_customerId(r_customerId);
        removeCustomer.setR_date(myCheckOutDate);
        
        RemoveCustomerDAO removeCustomerDAO=new RemoveCustomerDAO();
        int row=removeCustomerDAO.getRemoveCustomer(removeCustomer);
        
        if(row>0){
            response.sendRedirect("ValidRemoveCustomer.jsp");
        }
        else{
            response.sendRedirect("InvalidRemoveCustomer.jsp");
        }
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        doGet(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
