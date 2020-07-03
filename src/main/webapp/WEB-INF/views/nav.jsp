 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <header>
        <script type="application/javascript" src="/pib/resources/js/jquery/jquery-3.3.1.min.js"></script>
        <script type="application/javascript" src="/pib/resources/js/pib.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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
    </header>
    <div class="main-back"></div>
    <nav class="main-menu">
        <a href="/pib/"><img src="/pib/resources/img/logo.png" alt="piblogo" class="logo"></a>
        <ul class="main-nav">
            <li><a id = "company" href="/pib/company/c001">Company</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "c001" href="/pib/company/c001">CEO인사말</a></li>
                        <li><a id = "c002" href="/pib/company/c002">회사소개</a></li>
                        <li><a id = "c003" href="/pib/company/c003">경영비전</a></li>
                        <li><a id = "c004" href="/pib/company/c004">조직도</a></li>
                        <li><a id = "c005" href="/pib/company/c005">오시는 길</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "business" href="/pib/business/b001">Business</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "b001" href="/pib/business/b001">사업개요</a></li>
                        <li><a id = "b002" href="/pib/business/b002">사업현황</a></li>
                        <li><a id = "b003" href="/pib/business/b003">사업영역</a></li>
                        <li><a id = "b004" href="/pib/business/b004">고객사</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "solution" href="/pib/solution/s001">Solution</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "s001" href="/pib/solution/s001">e-BizACE</a></li>
                        <li><a id = "s002" href="/pib/solution/s002">다차원 분석 툴</a></li>
                        <li><a id = "s003" href="/pib/solution/s003">마이그레이션솔루션</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "recruit" href="/pib/recruit/r001">Recruit</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "r001" href="/pib/recruit/r001">채용정보</a></li>
                        <li><a id = "r002" href="/pib/recruit/r002/1">채용문의</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "customer" href="/pib/customer/cs001">Customer</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "cs001" href="/pib/customer/cs001">뉴스&공지사항</a></li>
                        <li><a id = "cs002" href="/pib/customer/cs002">Q&A</a></li>
                    </ul>
                </div>
            </li>

            <li><a id = "email" href="/pib/email/e001">E-mail</a>
                <div class = "sub-nav">
                    <ul>
                        <li><a id = "e001" href="/pib/email/e001">E-mail</a></li>
                    </ul>
                </div>
            </li>
        </ul>
        <%--우측상단 메뉴--%>
        <div class = "right-menu">
            <ul>
                <li>
                    <a href="#">
                        <i class="fas fa-building"></i>
                    </a>
                </li>
                <li>
                    <a href="/pib/company/c004">
                        <i class="fas fa-sitemap"></i>
                    </a>
                </li>
            </ul>
        </div>
        <%--서브메뉴 백그라운드--%>
        <div class = "bg"></div>
    </nav>