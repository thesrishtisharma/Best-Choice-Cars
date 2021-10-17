<%--
  Created by IntelliJ IDEA.
  User: srishti
  Date: 19-03-2021
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Best Choice Cars</title>
</head>
<body>
    <table align="center" width="50%" cellpadding="6" style="margin-top: 50px">
        <tr>
            <center> <th align="center" bgcolor="#4b0082" style="color: white" colspan="6"><h1> Best Choice Cars </h1> </th> </center>
        </tr>

        <tr>
            <td> <h2> <a href="<%=request.getContextPath()%>/byBrand"> Search Cars by Brand </a> </h2> </td>
            <td> <h2> <a href="<%=request.getContextPath()%>/byPrice"> Search Cars by Price </a> </h2> </td>
        </tr>
    </table>
</body>
</html>
