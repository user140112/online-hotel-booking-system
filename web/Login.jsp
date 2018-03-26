<%-- 
    Document   : Login
    Created on : Mar 6, 2018, 11:54:12 PM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="Login.css">
    </head>
    <body style="background-image: url(h3.jpg);background-repeat: no-repeat;background-size: 100%">
        <%
            String userId=(String)session.getAttribute("idTextBox");
            String password=(String)session.getAttribute("pwdTextBox");
            

            %>
            
            
            <div id="login">
                <form id="loginForm" action="LoginServlet" method="get" style="opacity: 0.8;">

                     <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Login Form</h1>    
                    <input id="textInput" type="text" name="idTextBox" placeholder="Enter User Id"><br><br>
                    

                    <input id="textInput" type="password" name="pwdTextBox" placeholder="Enter User password"><br><br>
                    <input id="inputButton" type="submit" name="loginButton" value="LOGIN">
            </form>
            </div>
    </body>
</html>
