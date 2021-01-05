<%--
  Created by IntelliJ IDEA.
  User: SangHyuk
  Date: 2019-08-28
  Time: 오후 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .swiper-container-position{
        position: relative;
        z-index: -1;
    }
    .swiper-wrapper-height{
        height: 600px;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        initSwiper();
    });
</script>

<div class="swiper-container swiper-container-position" style="margin-top: 60px">
    <div class="swiper-wrapper swiper-wrapper-height">
        <div class="showcase swiper-slide" style="background: url('/pib/resources/img/main_back1.jpg') no-repeat center center/cover;">
            <h2>People In Biz</h2>
            <p style="font-size: 14px;">
                피플인비즈는 고객이 원하는 곳에 항상 함께합니다
            </p>
        </div>
        <div class="showcase swiper-slide" style="background: url('/pib/resources/img/main_back2.jpg') no-repeat center center/cover;">
            <h2>People In Biz</h2>
            <p style="font-size: 14px;">
                피플인비즈는 고객이 원하는 곳에 항상 함께합니다
            </p>
        </div>
        <div class="showcase swiper-slide" style="background: url('/pib/resources/img/main_back3.jpg') no-repeat center center/cover;">
            <h2>People In Biz</h2>
            <p style="font-size: 14px;">
                피플인비즈는 고객이 원하는 곳에 항상 함께합니다
            </p>
        </div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>
<!-- Home cards 1 -->
<section class="home-cards">
    <div class = "content-item">
        <a href="/pib/menu/business/b001"><img src="/pib/resources/img/business.png" alt="business"></a>
        <h3> Best business partner</h3>
        <p>고객과 함께하는 맞춤형 IT 비즈니스 <br>서비스를 경험해보세요.</p>
        <a href="/pib/menu/business/b001">Learn More <i class="fas fa-chevron-right"></i></a>
    </div>
    <div class = "content-item">
        <a href="/pib/menu/solution/s001"><img src="/pib/resources/img/solution.jpg" alt="solution" /></a>
        <h3>Expert of IT solution</h3>
        <p>
            IT 전문가로 구성된 PIB팀의 솔루션. <br>
            경영혁신을 원하는 회사의 It item.
        </p>
        <a href="/pib/menu/solution/s001">Learn More <i class="fas fa-chevron-right"></i></a>
    </div>
    <div class = "content-item">
        <a href="/pib/menu/recruit/r001"><img src="/pib/resources/img/recruit.jpg" alt="recruit" /></a>
        <h3>Always waiting for you</h3>
        <p>
            능력을 마음껏 발휘할 수 있는 곳. <br>
            PeopleInBiz가 당신을 기다립니다. <br>

        </p>
        <a href="/pib/menu/recruit/r001">Learn More <i class="fas fa-chevron-right"></i></a>
    </div>
    <div class = "content-item">
        <a href="/pib/menu/customer/cs001/1"><img src="/pib/resources/img/customer.jpg" alt="customer"/></a>
        <h3>The highest satisfaction</h3>
        <p>
            고객 만족을 최우선 목표로,<br>
            오직 고객만 바라보는 PIB입니다.
        </p>
        <a href="/pib/menu/customer/cs001/1">Learn More <i class="fas fa-chevron-right"></i></a>
    </div>
</section>
