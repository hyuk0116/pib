<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="menu-container">
    <div class = "subtitle" style="margin-bottom: 50px;">
        <span style = "font-size: 22px; font-weight: 700;">
            오시는 길
        </span>
    </div>
    <div style="margin-bottom: 50px;">
        <table class="table">
            <caption>회사소개</caption>
            <colgroup>
                <col style="width: 160px">
                <col style="max-width: 800px">
            </colgroup>
            <tbody>
            <tr style="border-top: 0px;">
                <th>Address</th>
                <td>서울시 영등포구 경인로 775, 1동 1208호 (문래동 3가, 에이스하이테크시티)</td>
            </tr>
            <tr>
                <th>Tel</th>
                <td>02-6309-6880</td>
            </tr>
            <tr>
                <th>Fax</th>
                <td>02-6309-6881</td>
            </tbody>
        </table>
    </div>
</div>
<div id="map" style="margin-bottom: 150px;"></div>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=kydlplnknz"></script>
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
