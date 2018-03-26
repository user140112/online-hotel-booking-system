<%-- 
    Document   : AdminPanel
    Created on : Mar 20, 2018, 9:51:13 AM
    Author     : SUJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <style>
            body{background-color: skyblue;}
            
            th{font-size: 24px;background-color: #051019;color: aliceblue;}
            td{text-align: center;font-size: 20px;background-color: aliceblue;}
            #inputButton{padding: 30px;width: 50%;border-radius: 10px;font-size: 25px;}
        </style>
    </head>
    <body>
        <h1>Hello admin!</h1>
        
       <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
       url = "jdbc:mysql://localhost/test"
       user = "root" password = "sujan"/>
       
       <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from booking_info;
      </sql:query>
         
             <table border = "1" width = "100%">
                 <h1 style="color: #051019;padding:15px;background-color:gray;border-radius:10px;text-align: center">Customer Information</h1>    
         <tr>
            <th>Customer Id</th>
            <th>Check In Date</th>
            <th>Check Out Date</th>
            <th>Payment Id</th>
            <th>Room No</th>
            <th>Room Id</th>
            <th>Room State</th>
            <th>Room Type</th>
            <th>Room Price</th>
            <th>Number Of Days</th>
            <th>Amount</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.customer_id}"/></td>
               <td><c:out value = "${row.check_in_date}"/></td>
               <td><c:out value = "${row.check_out_date}"/></td>
               <td><c:out value = "${row.payment_id}"/></td>
               <td><c:out value = "${row.room_no}"/></td>
               <td><c:out value = "${row.room_id}"/></td>
               <td><c:out value = "${row.room_state}"/></td>
               <td><c:out value = "${row.room_type}"/></td>
               <td><c:out value = "${row.room_price}"/></td>
               <td><c:out value = "${row.day}"/></td>
               <td><c:out value = "${row.amount}"/></td>
            </tr>
         </c:forEach>
      </table>
         
      <sql:query dataSource = "${snapshot}" var = "result1">
         SELECT check_in_date,count(customer_id) as Total_Customer,sum(amount) as total_amount from booking_info group by check_in_date;
      </sql:query>
         
          <table border = "1" width = "100%">
                 <h1 style="color: #051019;padding:15px;background-color:gray;border-radius:10px;text-align: center">Daily Transaction</h1>    
         <tr>
            <th>Check In Date</th>
            <th>Total Customer</th>
            <th>Total Amount</th>
         </tr>
         
         <c:forEach var = "row1" items = "${result1.rows}">
            <tr>
               <td><c:out value = "${row1.check_in_date}"/></td>
               <td><c:out value = "${row1.Total_Customer}"/></td>
               <td><c:out value = "${row1.total_amount}"/></td>
            </tr>
         </c:forEach>
      </table>
       
         <form action="RemoveCustomer.jsp">
             <br><br>
             <center><input id="inputButton" type="submit" value="Remove Customer Details"></center>
         </form>
         
    </body>
</html>
