<%-- 
    Document   : newRegister
    Created on : Mar 11, 2018, 11:36:26 PM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="newRegister.css">
    </head>
    <body style="background-image: url(h4.jpg);background-repeat: no-repeat;background-size: 100%">
        
        <%
        String customerId=(String)session.getAttribute("cidTextBox");    
        String firstName=(String)session.getAttribute("firstnameTextBox");
        String lastName=(String)session.getAttribute("lastnameTextBox");
        String contactNo=(String)session.getAttribute("contactTextBox");
        String email=(String)session.getAttribute("emailTextBox");
        String country=(String)session.getAttribute("countryTextBox");
        String guestNum=(String)session.getAttribute("guestTextBox");
        String id=request.getParameter("idTextBox");

            %>
            
            <div id="register">
                        
                <form id="index_form" action="NewRegisterServlet" method="get" style="opacity: 0.8;" >
                <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Customer Registration</h1>
                					
                <input id="textInput" type="text" name="cidTextBox" placeholder="Enter Your Customer Id" required ><br><br>

					
		     <input id="textInput" type="text" name="firstnameTextBox" placeholder="Enter your first name here" required><br><br>

				
		     <input id="textInput" type="text" name="lastnameTextBox" placeholder="Enter your last name here" required><br><br>

					
		     <input id="textInput" type="text" name="contactTextBox" placeholder="Enter your contact no here" required><br><br>

					
		     <input id="textInput" type="text" name="emailTextBox" placeholder="Enter your email here" required><br><br>

					
                     <input id="textInput" type="text" name="countryTextBox" placeholder="Enter your country here" required><br><br>

				
		     <input id="textInput" type="text" name="guestTextBox" placeholder="Enter your number of guest here" required><br><br>

                     <input id="inputButton" type="submit" value="Register">
		</form>
            </div>
            
    </body>
</html>
