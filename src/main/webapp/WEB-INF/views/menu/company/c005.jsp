<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="menu-container">
</div>
<div class = "companymap" style="margin-bottom: 100px; text-align: center;">
    <span style = "font-size: 24px; font-weight: 700;">
        오시는 길
    </span>
</div>
<div style="margin-bottom: 100px;">
    <p style="font-size: 16px; font-weight: 500; text-align: center">
        <span style="font-size: 16px; font-weight: 700; text-align: center">Address &nbsp;</span>
        서울시 영등포구 경인로 775, 1동 1208호(문래동3가, 에이스하이테크시티)</p>
    <br>
    <p style="font-size: 16px; font-weight: 500; text-align: center; margin-right: 400px;">
        <span style="font-size: 16px; font-weight: 700; text-align: center; margin-right: 40px;">Tel &nbsp;</span>
        02 - 6309 - 6880</p>
    <br>
    <p style="font-size: 16px; font-weight: 500; text-align: center; margin-right: 400px; ">
        <span style="font-size: 16px; font-weight: 700; text-align: center; margin-right: 37px;">Fax &nbsp;</span>
        02 - 6309 - 6881</p>
</div>
<div id="map" style="margin-bottom: 150px;"></div>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=x7ywbrwzjs"></script>
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
