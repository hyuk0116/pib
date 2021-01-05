<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href = "/pib/resources/css/pib.css?version=${version}" />
    </head>

    <body>
        <div id="outer-container">
            <div id="sidebar" style="background-color: mediumslateblue; text-align: center;">
                <ul style="margin-top: 10px; font-size: 16px;">
                    <li>PeopleInBiz</li>
                    <li>관리자 페이지</li>
                </ul>

                <ul style="margin-top: 100px;">
                    <li style="background-color: whitesmoke; height: 50px; display: flex;">
                        <span style="margin: auto; font-size: 16px;">카테고리</span>
                    </li>
                </ul>
            </div>
            <div id="content" style="background-color: whitesmoke">
                <ul>
                    <li><a href="/pib/menu/customer/cs001/1">공지사항 등록하기</a></li>
                    <li><a href="#">공지사항 수정하기</a></li>
                    <li><a href="#">공지사항 삭제하기</a></li>
                    <li><a href="#">로그아웃</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>
