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
    <meta name="description" content="SI,SM 및 IT Outsourcing,경영자정보(EIS),분석 툴 솔루션 제공." />
    <meta name = "keywords" content = " 피플인비즈, SI, SM, IT아웃소싱, 솔루션, 경영자정보, EIS, 마이그레이션 솔루션, 컨설팅 " />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="피플인비즈" />
    <meta property="og:description" content="SI,SM 및 IT Outsourcing,경영자정보(EIS),분석 툴 솔루션 제공." />
    <meta property="og:url" content="http://peopleinbiz.co.kr" />
    <meta name="Robots" content="INDEX, FOLLOW" />
    <meta name="naver-site-verification" content="10d19a3fd2a5aa2f6ea1df92886a042381c4529c" />
    <meta name="google-site-verification" content="lKFgWRaL2NKC8y3Q763LLQecldzt54l4OPmYwSZIsTQ" />
    <script type="application/javascript" src="/pib/resources/js/swiper/swiper.min.js"></script>
    <script type="application/javascript" src="/pib/resources/js/jquery/jquery-3.3.1.min.js"></script>
    <script type="application/javascript" src="/pib/resources/js/pib.js"></script>
    <link rel="stylesheet" href = "/pib/resources/css/pib.css?version=${version}" />
    <link rel="stylesheet" href = "/pib/resources/css/swiper.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link rel="shortcut icon" href="http://peopleinbiz.co.kr/pib/resources/img/favicon.ico">
    <link rel="icon" href="http://peopleinbiz.co.kr/pib/resources/img/favicon.ico">
    <link rel="apple-touch-icon" href="http://peopleinbiz.co.kr/pib/resources/img/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="http://peopleinbiz.co.kr/pib/resources/img/favicon.ico">

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
