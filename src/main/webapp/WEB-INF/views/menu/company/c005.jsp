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
    <div class="menu-container">
    </div>

    <div id="map"></div>

    <script>
        var mapOptions = {
            center: new naver.maps.LatLng(37.514490, 126.899436),
            zoom: 16
        };

        var map = new naver.maps.Map('map', mapOptions);

        var marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(37.514490, 126.899436),
            map: map
        })

        var contentString = [
            '<div class="iw_inner" style="padding: 4px ">',
            '   <h4>㈜피플인비즈</h4>',
            '   <p>에이스하이테크시티<br>',
            '       1동 1208호<br>',
            '   </p>',
            '</div>'
        ].join('');

        var infowindow = new naver.maps.InfoWindow({
            content: contentString
        });

        infowindow.open(map, marker);

    </script>
</body>
</html>
