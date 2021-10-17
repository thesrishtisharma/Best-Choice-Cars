<%--
  Created by IntelliJ IDEA.
  User: srishti
  Date: 20-03-2021
  Time: 01:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Best Choice Cars</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/best-choice-cars" user="root" password=""/>

   <%
       int carID = Integer.parseInt(request.getParameter("car_id"));
   %>

   <table border="2" align="center" width="50%" cellpadding="6" style="margin-top: 50px">
       <tr>
           <center> <th align="center" bgcolor="#4b0082" style="color: white" colspan="7"><h1> Best Choice Cars </h1> </th> </center>
       </tr>

       <sql:query dataSource="${db}" var="rs">
           SELECT * FROM `cars` WHERE id = <%=carID%>;
       </sql:query>
       <c:forEach items="${rs.rows}" var="q">

           <tr>
               <center> <th align="center"> <h2> Congratulations!!! You have successfully booked <span style="color: indigo; font-style: italic" > ${q.brand} ${q.model} </span> car. </h2> </th> </center>
           </tr>

       </c:forEach>

       <tr>
           <center> <th> Thank you!!! Have a good day!!! </th> </center>
       </tr>

       <tr>
           <td align="center"> <a href="/"> Click here to navigate to the main menu </a> </td>
       </tr>

   </table>
</body>
</html>
