<%--
  Created by IntelliJ IDEA.
  User: srishti
  Date: 19-03-2021
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Best Choice Cars</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <style>
        .button {
            background-color: #4b0082; /* purple */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/best-choice-cars" user="root" password=""/>

 This is carByBrand.jsp
<%
    int brandID = Integer.parseInt(request.getParameter("brand"));
%>
    <form>
        <table border="2" align="center" width="50%" cellpadding="6" style="margin-top: 50px">
            <tr>
                <center> <th align="center" bgcolor="#4b0082" style="color: white" colspan="7"><h1> Best Choice Cars </h1> </th> </center>
            </tr>

            <tr>
                <center> <th align="center" colspan="7"> <h2> Choose a car to buy </h2> </th> </center>
            </tr>

            <tr>
                <th> Select </th>
                <th> Brand </th>
                <th> Model </th>
                <th> Year </th>
                <th> No. Of Kms </th>
                <th> Price </th>
                <th> Fuel </th>
            </tr>

            <sql:query dataSource="${db}" var="rs">
                SELECT * FROM `cars` WHERE b_id = <%=brandID%>;
            </sql:query>
            <c:forEach items="${rs.rows}" var="q">

            <tr>
                    <td> <input name="car_id" type="radio" value="${q.id}"> </td>
                    <td> ${q.brand} </td>
                    <td> ${q.model} </td>
                    <td> ${q.year} </td>
                    <td> ${q.num_of_kms} </td>
                    <td> ${q.price} </td>
                    <td> ${q.fuel} </td>
            </tr>

            </c:forEach>
        </table>
        <br>
        <center>
            <input class="button" type="submit" value="Book Car" formaction="<%=request.getContextPath()%>/successByBrand">
            <input class="button" type="submit" value="Back" formaction="/byBrand">
            <input class="button" type="submit" value="Home" formaction="/">
        </center>
    </form>
</body>
</html>
