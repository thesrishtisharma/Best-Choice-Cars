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
    <form>
        <table align="center" width="50%" cellpadding="6" style="margin-top: 50px">
            <tr>
                <center> <th align="center" bgcolor="#4b0082" style="color: white" colspan="6"><h1> Best Choice Cars </h1> </th> </center>
            </tr>

            <tr>
                <center> <th align="center"> <h2> Choose price range to find available cars </h2> </th> </center>
            </tr>

            <tr>
                <td>
                    <input type="radio" name="Less" value="lt5Lakhs"> <label> < 5 lakhs </label>
                </td>
            </tr>

            <tr>
                <td>
                    <input type="radio" name="More" value="gt5Lakhs"> <label> > 5 lakhs </label>
                </td>
            </tr>
        </table>
        <center>
            <input class="button" type="submit" value="Find your car" formaction="<%=request.getContextPath()%>/carByPrice">
            <input class="button" type="submit" value="Back" formaction="/">
        </center>
    </form>
</body>
</html>
