<%-- 
    Document   : AdminLogin
    Created on : Mar 20, 2018, 9:29:26 AM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" type="text/css" href="Login.css">
    </head>
    <body style="background-image: url(h1.jpg);">
                <%
            String adminId=(String)session.getAttribute("adminIdTextBox");
            String admin_pwd=(String)session.getAttribute("adminPwdTextBox");
            

            %>
            
            
            <div id="login">
                <form id="loginForm" action="AdminServlet" method="post" style="opacity: 0.8;">

                    <h1 style="color: red;padding:15px;background-color:gray;border-radius:10px;">Admin Login</h1>    
                    <input id="textInput" type="text" name="adminIdTextBox" required placeholder="Enter Admin Id"><br><br>
                    

                    <input id="textInput" type="password" name="adminPwdTextBox" required placeholder="Enter admin password"><br><br>
                    <input id="inputButton" type="submit" name="loginButton" value="LOGIN">
            </form>
            </div>
    </body>
</html>
