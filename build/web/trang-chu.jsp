<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <link rel="stylesheet" href="./style.css"/>
    </head>
    <body>
        <h2 class="text">dasd</h2>
        <c:forEach var="sanpham" items="${sanphams}" >
            <c:out value="${sanpham.getId()}" />
        </c:forEach>
    </body>
</html>
