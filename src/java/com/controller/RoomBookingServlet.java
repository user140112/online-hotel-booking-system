
package com.controller;

import com.dao.RoomBookingDAO;
import com.module.RoomBooking;
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

@WebServlet(name = "RoomBookingServlet", urlPatterns = {"/RoomBookingServlet"})
public class RoomBookingServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RoomBookingServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RoomBookingServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        String customerId=request.getParameter("idTextBox");
        String customerPwd=request.getParameter("pwdTextBox");
        String roomNo=request.getParameter("roomNoTextBox");
        String checkInDate=request.getParameter("checkInDateTextBox");
        String checkOutDate=request.getParameter("checkOutDateTextBox");
        String paymentId=request.getParameter("paymentIdTextBox");
        

        
        String myCheckInDate=null;
        String myCheckOutDate=null;
        
        try {
            Date date=new SimpleDateFormat("yyyy-mm-dd").parse(checkInDate);
            SimpleDateFormat sFormat=new SimpleDateFormat("yyyy-mm-dd");
            myCheckInDate=sFormat.format(date);
            Date date1=new SimpleDateFormat("yyyy-mm-dd").parse(checkOutDate);
            myCheckOutDate=sFormat.format(date1);
        } catch (ParseException ex) {
            Logger.getLogger(NewRegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RoomBooking roomBooking=new RoomBooking();
        roomBooking.setCustomerId(customerId);
        roomBooking.setCustomerPwd(customerPwd);
        roomBooking.setRoomNo(roomNo);
        roomBooking.setCheckInDate(myCheckInDate);
        roomBooking.setCheckOutDate(myCheckOutDate);
        roomBooking.setPaymentId(paymentId);
        

        RoomBookingDAO roomBookingDAO=new RoomBookingDAO();
        int rowNo=roomBookingDAO.getRoomBooking(roomBooking);
        if(rowNo>0){
            response.sendRedirect("newRegister.jsp");
        }
        else{
            response.sendRedirect("Existance.jsp");
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
