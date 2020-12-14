<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="Spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;" charset="UTF-8">
        <link rel="stylesheet" href = "/pib/resources/css/pib.css?version=${version}" />
    </head>
    <body style="background-color: lavender">
        <div style="text-align: center; margin-top: 10%">

            <h2>피플인비즈 <br> 관리자 페이지</h2><br>


            <form:form action="/pib/login" method="post">
                <input style="height: 30px; width: 200px;" type="text" name="username" placeholder="아이디"><br><br>
                <input style="height: 30px; width: 200px;" type="password" name="password" placeholder="비밀번호"><br><br>
                <button style="height: 30px; width: 200px;" type="submit">로그인</button>
            </form:form>
        </div>

        <c:if test = "${not empty param.fail}">
            <p style="text-align: center; color: red;"><Spring:message code = "login.error"></Spring:message></p>
        </c:if>
    </body>
</html>

