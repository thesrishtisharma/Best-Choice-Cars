<%--
  Created by IntelliJ IDEA.
  User: srishti
  Date: 19-03-2021
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Best Choice Cars</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

    <style>
        select{
            height: 25px;
            width: 250px;
        }
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

<form>
    <table align="center" width="50%" cellpadding="6" style="margin-top: 50px">
        <tr>
            <center> <th align="center" bgcolor="#4b0082" style="color: white" colspan="6"><h1> Best Choice Cars </h1> </th> </center>
        </tr>

        <tr>
            <center> <th align="center"> <h2> Choose brand to find available models </h2> </th> </center>
        </tr>

        <tr>
            <th align="right"> Brand: </th>
            <td>
                <select name="brand">
                    <option value="" disabled> Choose Car by Brand </option>
                    <sql:query dataSource="${db}" var="rs">
                        SELECT * from brands;
                    </sql:query>
                    <c:forEach items="${rs.rows}" var="q">
                        <option value="${q.brand_id}"> ${q.brand} </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>

    <center>
        <input class="button" type="submit" value="Find Models" formaction="<%=request.getContextPath()%>/carByBrand">
        <input class="button" type="submit" value="Back" formaction="/">
    </center>
</form>
</body>
</html>
