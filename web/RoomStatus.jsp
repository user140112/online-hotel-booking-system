<%-- 
    Document   : RoomStatus
    Created on : Mar 20, 2018, 12:42:22 AM
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
        <title>Room Status</title>
        <style>
            body{background-color: skyblue;background-image: url(h5.jpg);background-repeat: no-repeat;background-size: 100%;}
            #tab{text-align: center;margin: 100px 400px;}
            h1{color: #051019;padding:15px;background-color:gray;border-radius:10px;}
            th{padding: 15px;color: aliceblue;background-color: #051019;text-align: center;}
            tr{padding: 10px;color: #051019;background-color:aliceblue;text-align: center;}
            
        </style>
    </head>
    <body>
        
        
       <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
       url = "jdbc:mysql://localhost/test"
       user = "root" password = "sujan"/>
       
       <c:set var = "room_state" value = "available"/>
       
         <sql:query dataSource = "${snapshot}" var = "result">
         SELECT room_no,room_type from v_room_status where room_state=?;
         <sql:param value = "${room_state}" />
      </sql:query>
         <div id="tab">
             <h1>Available Rooms</h1>
               <table border = "1" width = "100%">
         <tr>
            <th>Room No</th>
            <th>Room Type</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.room_no}"/></td>
               <td><c:out value = "${row.room_type}"/></td>
               
            </tr>
         </c:forEach>
         
      </table>
             </div>
        
    </body>
</html>
