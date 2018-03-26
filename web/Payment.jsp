<%-- 
    Document   : Payment
    Created on : Mar 17, 2018, 12:01:54 PM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" type="text/css" href="Payment.css">
    </head>
    <body style="background-image: url(h3.jpg);background-repeat: no-repeat;background-size: 100%">
        
        <%
            String paymentId=(String)session.getAttribute("paymentIdTextBox");
            String cardNo=(String)session.getAttribute("cardNoTextBox");
            
        %>
        
        <div id="payment">
            
            <form id="payment_form" action="PaymentServlet" method="get" style="opacity: 0.8;">
                <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Payment Details</h1>
                
                <input id="textInput" type="text" name="paymentIdTextBox" placeholder="Enter your payment id here"><br><br>
                <input id="textInput" type="text" name="cardNoTextBox" placeholder="Enter your card no here"><br><br>
                <input id="inputButton" type="submit" value="Submit">
                
                
            </form>
            
        </div>
        
    </body>
</html>
