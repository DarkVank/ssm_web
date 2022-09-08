<%--
  Created by IntelliJ IDEA.
  User: Dark_network
  Date: 2022/9/8
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <table>
       <tr>
           <td>id</td>
           <td>name</td>
           <td>money</td>
       </tr>
       <c:forEach items="${accountList}" var="account">
           <tr>
               <td>${account.id}</td>
               <td>${account.name}</td>
               <td>${account.money}</td>

           </tr>
       </c:forEach>
   </table>
</body>
</html>
