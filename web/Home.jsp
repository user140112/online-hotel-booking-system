<%-- 
    Document   : Home
    Created on : Mar 15, 2018, 7:34:45 PM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="Home.css">
    </head>
    <body>
        <h1 style="padding: 20px;width: 100%;background-color: #0c6996;color: aliceblue;border-radius: 10px;">Welcome to Online Hotel Booking System</h1>
        <ul>
              <li><a href="default.jsp" target="iframe_a">Home</a></li>
              <li><a href="RoomInformation.jsp" target="iframe_a">Room Type</a></li>
              <li><a href="Login.jsp" target="iframe_a">Login</a></li>
              <li><a href="RoomStatus.jsp" target="iframe_a">Available Rooms</a></li>
              <li><a href="RoomBooking.jsp" target="iframe_a">Booking</a></li>
              <li><a href="AdminLogin.jsp" target="iframe_a">Admin</a></li>
              <li><a href="AboutUs.jsp" target="iframe_a">About Us</a></li>
        </ul>
        
        <iframe height="600" width="1345" name="iframe_a"></iframe>
    </body>
</html>
