<%--
  Created by IntelliJ IDEA.
  User: SangHyuk<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
  Date: 2019-08-28
  Time: 오후 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <script type="application/javascript" src="/pib/resources/js/swiper/swiper.min.js"></script>
    <script type="application/javascript" src="/pib/resources/js/jquery/jquery-3.3.1.min.js"></script>
    <script type="application/javascript" src="/pib/resources/js/pib.js"></script>
    <link rel="stylesheet" href = "/pib/resources/css/pib.css?version=${version}" />
    <link rel="stylesheet" href = "/pib/resources/css/swiper.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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
