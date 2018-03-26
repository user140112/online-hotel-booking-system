<%-- 
    Document   : RemoveCustomer
    Created on : Mar 20, 2018, 11:43:02 AM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Customer</title>
        <link rel="stylesheet" type="text/css" href="Login.css">
    </head>
    <body style="background-image: url(h3.jpg);background-repeat: no-repeat;background-size: 100%">
                        <%
            String r_customerId=(String)session.getAttribute("r_customerIdTextBox");
            String r_date=(String)session.getAttribute("r_dateTextBox");
            

            %>
            
            
            <div id="login">
                <form id="loginForm" action="RemoveCustomerServlet" method="post" style="opacity: 0.8;">

                    <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Remove Customer Details</h1>    
                    <input id="textInput" type="text" name="r_customerIdTextBox"  placeholder="Enter Customer Id"><br><br>
                    

                    <input id="textInput" type="date" name="r_dateTextBox"  placeholder="Enter Date"><br><br>
                    <input id="inputButton" type="submit" name="removeButton" value="Remove">
            </form>
            </div>
    </body>
</html>
