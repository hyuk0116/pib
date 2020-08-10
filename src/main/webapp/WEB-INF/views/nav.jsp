 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <script type="text/javascript">
        $(document).ready(function () {
            initNav();
            initEvent();

            if("${category}" != "") {
                $("#${category}").addClass("mainon selected");
                $("#${page}").addClass("subon");
            }
            <%--<c:if test="${not empty category}">
                $("#${category}").addClass("mainon");
                $("#${page}").addClass("subon");
            </c:if>--%>
        });
    </script>

    <div class="main-back"></div>
    <nav class="main-menu">
        <a href="/pib/"><img src="/pib/resources/img/logo.png" alt="piblogo" class="logo"></a>
        <ul class="main-nav">
            <li><a id = "company" href="/pib/menu/company/c001">Company</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "c001" href="/pib/menu/company/c001">CEO인사말</a></li>
                        <li><a id = "c002" href="/pib/menu/company/c002">회사소개</a></li>
                        <li><a id = "c003" href="/pib/menu/company/c003">경영비전</a></li>
                        <li><a id = "c004" href="/pib/menu/company/c004">조직도</a></li>
                        <li><a id = "c005" href="/pib/menu/company/c005">오시는 길</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "business" href="/pib/menu/business/b001">Business</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "b001" href="/pib/menu/business/b001">사업개요</a></li>
                        <li><a id = "b002" href="/pib/menu/business/b002">사업현황</a></li>
                        <li><a id = "b003" href="/pib/menu/business/b003">사업영역</a></li>
                        <li><a id = "b004" href="/pib/menu/business/b004">고객사</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "solution" href="/pib/menu/solution/s001">Solution</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "s001" href="/pib/menu/solution/s001">e-BizACE</a></li>
                        <li><a id = "s002" href="/pib/menu/solution/s002">다차원 분석 툴</a></li>
                        <li><a id = "s003" href="/pib/menu/solution/s003">마이그레이션솔루션</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "recruit" href="/pib/menu/recruit/r001">Recruit</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "r001" href="/pib/menu/recruit/r001">채용정보</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "customer" href="/pib/menu/customer/cs001/1">Customer</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "cs001" href="/pib/menu/customer/cs001/1">공지사항</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "email" href="mailto:dnjsejzkfldh@naver.com">E-mail</a></li>
        </ul>
        <%--서브메뉴 백그라운드--%>
        <div class = "bg"></div>
    </nav>