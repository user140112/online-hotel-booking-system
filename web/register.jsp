<%-- 
    Document   : register
    Created on : Mar 7, 2018, 12:25:58 AM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        String name=(String)session.getAttribute("nameTextBox");
        String contactNo=(String)session.getAttribute("contactTextBox");
        String email=(String)session.getAttribute("emailTextBox");
        String country=(String)session.getAttribute("countryTextBox");

            %>
            
            <div style="text-align: center;margin: 100px 400px">
                            <form style="width: 100%;background-color: #051019;padding: 50px 0px;border-radius: 5px" >
						
					
                                <input type="text" name="nameTextBox" placeholder="Enter your name here" style="width: 250px;padding: 10px;border-radius: 5px"><br><br>
				
				
					
                <input type="text" name="contactTextBox" placeholder="Enter your contact no here" style="width: 250px;padding: 10px;border-radius: 5px" required><br><br>
				
				
					
                <input type="text" name="emailTextBox" placeholder="Enter your email here" style="width: 250px;padding: 10px;border-radius: 5px" required><br><br>
				
				
					
                <input type="text" name="countryTextBox" placeholder="Enter your countery here" style="width: 250px;padding: 10px;border-radius: 5px" required><br><br>
				
                <input type="submit" value="Save" style="width: 200px;padding: 10px;border-radius: 5px">		
	
		</form>
            </div>
	
    </body>
</html>
