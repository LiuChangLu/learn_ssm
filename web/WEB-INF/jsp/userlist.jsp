<%--
  Created by IntelliJ IDEA.
  User: langu
  Date: 2019-01-22
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
看到这里，证明你来过 <br>
<table style="border: solid 1px black" cellpadding="0px">

    <c:forEach items="${userlist}" var="user">
        <tr>
            <td>${user.uid}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
