<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class = "menu-container">
    <div class="board-info" style="border-bottom: #766FA9 solid; width: 70%; margin: auto;">
        <ul style="font-size: 16px; padding:30px 10px 10px 10px; display: flex; flex-direction: row">
            <li style="width: 100%">${qna.title}</li>
            <li><fmt:formatDate value="${qna.date}" pattern="yyyy.MM.dd"/></li>
        </ul>
    </div>

    <div class="board-content" style="width: 65%; font-size: 15px; margin: auto; padding: 50px 0px; line-height: 3.5em;">
        ${qna.content}
    </div>

    <div style="border-top: #766FA9 solid 1px; width: 70%; margin: auto;"></div>

    <div class="board-nav" style="margin: auto; width: 70%;">
        <ul style="font-size: 16px; padding:10px 10px 0px 10px; display: flex; flex-direction: row">
            <li style="width: 97%;">
                <c:if test="${not empty qna.prevBno}">
                    <span>
                        <a class="board-nav-a" href= '<c:url value="/menu/customer/cs002/${criteria.page}/${qna.prevBno}"/>'>이전</a>
                    </span>
                </c:if>
                <c:if test="${not empty qna.prevBno and not empty qna.nextBno}">
                &nbsp;|&nbsp;
                </c:if>
                <c:if test="${not empty qna.nextBno}">
                    <span>
                        <a class="board-nav-a" href= '<c:url value="/menu/customer/cs002/${criteria.page}/${qna.nextBno}"/>'>다음</a>
                    </span>
                </c:if>
            </li>
            <li>
                <a class="board-nav-a" href='<c:url value="/menu/customer/cs001/${criteria.page}"/>'>목록</a>
            </li>
        </ul>
    </div>
</div>