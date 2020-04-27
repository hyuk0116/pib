<%--
  Created by IntelliJ IDEA.
  User: SangHyuk<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
  Date: 2019-08-28
  Time: 오후 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <div class="menu-btn">
        <i class="fas fa-bars fa-2x"></i>
    </div>
    <div class="container">
        <%-- Nav --%>
        <jsp:include page="nav.jsp"/>
        <%-- page --%>
        <jsp:include page="${pageName}.jsp"/>
        <%-- footer --%>
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>
