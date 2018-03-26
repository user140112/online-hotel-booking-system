<%-- 
    Document   : WelcomeNotes
    Created on : Mar 12, 2018, 1:30:13 AM
    Author     : SUJAN
--%>

<%@page import="com.module.loginmodel"%>
<%@page import="com.module.RoomBooking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{background-color: skyblue;background-image: url(h7.jpg);background-repeat: no-repeat;background-size: 100%}
            #txt{text-align: center;margin: 100px 400px;}
            h1{color: #051019;padding:15px;background-color:gray;border-radius:10px;opacity: 0.8;}
            table{background-color: skyblue;height: 400px;width: 550px; opacity: 0.8;}
            tr{font-size: 36px;background-color: #051019;color: aliceblue;}
            td{text-align: center;}
        </style>
    </head>
    <body>
        <%
            
            String customer_Id=loginmodel.getUname();
            pageContext.setAttribute("cust_id", customer_Id);
            
        %>
        
    
    
    <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
       url = "jdbc:mysql://localhost/test"
       user = "root" password = "sujan"/>
       
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT customer_id,check_in_date,check_out_date,payment_id,room_no,room_type,room_price,amount from booking_info where customer_id=?;
         <sql:param value = "${cust_id}" />
      </sql:query>
        
             
         
         <div id="txt">
             <h1>User Registration Information</h1>
 <table >
     <c:forEach var = "row" items = "${result.rows}">
     <tr>
         <td><label>Customer Id:</label></td>
         <td><c:out value = "${row.customer_id}"/></td>
     </tr>
     <tr>
         <td><label>Check-In_date:</label></td>
         <td><c:out value = "${row.check_in_date}"/></td>
     </tr>
          <tr>
         <td><label>Check-Out-Date:</label></td>
         <td><c:out value = "${row.check_out_date}"/></td>
     </tr>
          <tr>
         <td><label>Payment Id:</label></td>
         <td><c:out value = "${row.payment_id}"/></td>
     </tr>
          <tr>
         <td><label>Room No:</label></td>
         <td><c:out value = "${row.room_no}"/></td>
     </tr>
          <tr>
         <td><label>Room Type:</label></td>
         <td><c:out value = "${row.room_type}"/></td>
     </tr>
          <tr>
         <td><label>Room Price:</label></td>
         <td><c:out value = "${row.room_price}"/></td>
     </tr>
          <tr>
         <td><label>Amount:</label></td>
         <td><c:out value = "${row.amount}"/></td>
     </tr>
      </c:forEach>
 </table>
             </div>
      
    </body>
</html>
