<%-- 
    Document   : RoomBooking
    Created on : Mar 16, 2018, 11:29:22 AM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room Booking</title>
        <link rel="stylesheet" type="text/css" href="RoomBooking.css">
    </head>
    <body style="background-image: url(h4.jpg);background-repeat: no-repeat;background-size: 100%">
        
        <%
            String customerId=(String)session.getAttribute("idTextBox");
            String customerPwd=(String)session.getAttribute("pwdTextBox");
            String roomNo=(String)session.getAttribute("roomNoTextBox");
            String checkInDate=(String)session.getAttribute("checkInDateTextBox");
            String checkOutDate=(String)session.getAttribute("checkOutDateTextBox");
            String paymentId=(String)session.getAttribute("paymentIdTextBox");
            
        %>
        
        <div id="room_booking">
            
            <form id="booking_form" action="RoomBookingServlet" method="post" style="opacity: 0.8;">
                <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Room Booking</h1>
                <input id="textInput" type="text" name="idTextBox" placeholder="Enter your user id here"><br><br>
                <input id="textInput" type="password" name="pwdTextBox" placeholder="Enter your password id here"><br><br>
                <input id="textInput" type="text" name="roomNoTextBox" placeholder="Enter your room no here"><br><br>
                <input id="textInput" type="date" name="checkInDateTextBox"><br><br>
                <input id="textInput" type="date" name="checkOutDateTextBox"><br><br>
                <input id="textInput" type="text" name="paymentIdTextBox" placeholder="Enter your payment id here"><br><br>
                <input id="inputButton" type="submit" value="Submit">
                
                
            </form>
            
        </div>
    </body>
</html>
