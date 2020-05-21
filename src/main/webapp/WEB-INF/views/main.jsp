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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href = "/pib/resources/css/pib.css?version=${version}" rel = "stylesheet" type = "text/css"/>
</head>
<body>
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
