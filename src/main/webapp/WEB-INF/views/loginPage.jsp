<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
    </head>
    <body>
        <form:form action="/pib/login" method="post">
            <input type="text" name="username" placeholder="adminID">
            <input type="password" name="password" placeholder="adminPW">
            <button type="submit">Sign in</button>
        </form:form>

        <c:if test = "${not empty param.fail}">
            <p><Spring:message code = "login.error"></Spring:message></p>
        </c:if>
    </body>
</html>

