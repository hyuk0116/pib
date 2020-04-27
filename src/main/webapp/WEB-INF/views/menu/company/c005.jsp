<%--
  Created by IntelliJ IDEA.
  User: naver
  Date: 2019-08-11
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>찾아오시는 길</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=x7ywbrwzjs"></script>
</head>
<body>
    <div class="menu-container" style="height: 400px">
        S
        sA
        SA
        sa
        Sa
        sA
        Sa
        sA
        Sa
        sa
        SA
        sa
        SS
        as
        aS
        sa
        S

    </div>

    <div id="map" style="width:600px;height:400px;margin: 10px auto;"></div>

    <script>
        var mapOptions = {
            center: new naver.maps.LatLng(37.5147657, 126.8973946),
            zoom: 16
        };

        var map = new naver.maps.Map('map', mapOptions);

        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(37.5147657, 126.8973946),
            map: map
        });
    </script>
</body>
</html>
