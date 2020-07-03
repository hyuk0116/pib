<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class = "menu-container">
    <table>
        <thead>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
        </thead>
        <tbody>
            <c:forEach items="${qnaList}" var="qna">
                <tr>
                    <td>${qna.bno}</td>
                    <td>${qna.title}</td>
                    <td>${qna.writer}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>
