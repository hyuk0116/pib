<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class = "menu-container">
    <div class = "subtitle" style="margin-bottom: 50px;">
        <span>
            공지사항
        </span>
    </div>
</div>
<div>
    <table class = "table" style="width: 50%; text-align: center;">
        <thead style="text-align-last: center;">
        <th style="width: 80%">제목</th>
        <th style="width: 20%">게시일</th>
        </thead>
        <tbody>
        <c:forEach items="${qnaList}" var="qna">
            <tr>
                <td style="text-align: left;"><a style="padding-left: 20px" class="board-title" href='<c:url value="/menu/customer/cs002/${pageMaker.cri.page}/${qna.bno}"/>'>${qna.title}</a></td>
                <td><fmt:formatDate value="${qna.date}" pattern="yyyy.MM.dd"/></td>
            </tr>
    </c:forEach>
        </tbody>
    </table>
    <div class="pagination-wrapper">
        <div class="pagination">
            <ul style="display: flex; justify-content: center;">
                <c:if test="${pageMaker.prev }">
                    <li style="padding-right: 3px">
                        <a class="prev page-numbers" href='<c:url value="/menu/customer/cs001/${pageMaker.startPage-1 }"/>'><i class="fa fa-chevron-left"></i></a>
                    </li>
                </c:if>
                <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
                    <c:choose>
                        <c:when test="${pageNum eq pageMaker.cri.page }">
                            <span class="page-numbers current"><i class="fa">${pageNum }</i></span>
                        </c:when>
                        <c:otherwise>
                                <a class="page-numbers" href='<c:url value="/menu/customer/cs001/${pageNum }"/>'><i class="fa">${pageNum }</i></a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
                    <li style="padding-right: 3px">
                        <a class="next page-numbers" href='<c:url value="/menu/customer/cs001/${pageMaker.endPage+1 }"/>'><i class="fa fa-chevron-right"></i></a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>