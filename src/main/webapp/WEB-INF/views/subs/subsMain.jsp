<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>꽃 정기구독</title>
    <%@ include file="../main/import.jspf"%>
    <link rel="stylesheet" href="/static/css/item/list.css">
    <link rel="stylesheet" href="/static/css/subs/subs.css">
    <style>
        #sub_btn1, #sub_btn2 {
            font-size: 23px;
            padding: 0px 80px 10px 80px;
            border: none;
            background-color: white;
            color: black;
            box-shadow: none;
            border-bottom: 4px solid #ffcd32;
        }
        .btn-group {
            margin: 20px 50px;
        }
        #subs_infos {
            padding: 80px 0px 10px 90px;
        }
        #subs_infos2 {
            padding: 80px 90px 10px 0px;
        }
    </style>
</head>
<body>
<%@ include file="../main/header.jspf" %>
    <div class="banner-wrap d-flex align-items-center justify-content-center">
        <div class="w-1280 mx-auto">
            <img src="/static/image/flower/flower_banner_1280.jpg" alt="꽃다발배너" class="col-12">
        </div>
        <div class="banner-text w-1280 position-absolute mx-auto">
            <div class="banner-title fw500 mb-4 ms-2">새늘봄 꽃 정기구독</div>
            <div class="banner-summary fw-light ms-2">
                2주에 한 번, 매번 새로운 꽃으로 당신의 일상을 행복으로 채울게요.
            </div>
        </div>
    </div>

<!-- 컨테이너 -->
<div id="container" class="mx-auto">
    <!-- 상품 버튼 -->
    <div class="d-flex justify-content-center my-5">
        <div class="row">
            <div class="btn-group">
                <input type="radio" class="btn-check" id="btnradio1" checked onclick="subsList()">
                <label class="btn" id="sub_btn1" for="btnradio1">정기구독 상품
                </label>
                <input type="radio" class="btn-check" id="btnradio2" onclick="subsInfo()">
                <label class="btn btn-outline-primary" id="sub_btn2" for="btnradio2">이용 방법
                </label>
            </div>
        </div>
    </div>

    <div class="subs_list justify-content-center">
    <!-- 정기구독 상품 4개 리스트 -->
    <c:forEach var="subsVo" items="${subsList}" varStatus="status">

        <c:if test="${empty subsVo}">
            <h3>판매중인 정기구독 상품이 없습니다.</h3>
        </c:if>

        <c:if test="${not empty subsVo}">

            <c:if test="${status.index == 0 || status.index == 2}">
                <div class="row my-5 align-middle">
                    <div class="col-6">
                        <a href="/subs/${subsVo.idx}">
                            <img src="${subsVo.image1}" alt="${subsVo.name}" class="w-100" height="580px"/>
                        </a>
                    </div>
                    <div class="col-6" id="subs_infos">
                        <h4 class="fw-normal text-secondary">${subsVo.subheader}</h4>
                        <h2 class="py-2">${subsVo.name}</h2>
                        <h2 class="py-3">${subsVo.price} ~</h2>
                        <div class="w-95">
                        <h5 class="py-3 fw-lighter lh-lg">${subsVo.content}</h5>
                        </div>
                        <h5 class="py-3"><span class="badge rounded-pill bg-light text-dark">무료배송</span></h5>
                    </div>
                </div>
                <hr>
            </c:if>
            <c:if test="${status.index == 1 || status.index == 3}">
                <div class="row my-5 text-end">
                    <div class="col-6" id="subs_infos2">
                        <h4 class="fw-normal text-secondary">${subsVo.subheader}</h4>
                        <h2 class="py-2">${subsVo.name}</h2>
                        <h2 class="py-3">${subsVo.price} ~</h2>
                        <div class="w-110">
                        <h5 class="py-3 fw-lighter lh-lg">${subsVo.content}</h5>
                        </div>
                        <h5 class="py-3"><span class="badge rounded-pill bg-light text-dark">무료배송</span></h5>
                    </div>
                    <div class="col-6">
                        <a href="/subs/${subsVo.idx}">
                            <img src="${subsVo.image1}" alt="${subsVo.name}" class="w-100" height="580px"/>
                        </a>
                    </div>
                </div>
                <hr>
            </c:if>
        </c:if>
    </c:forEach>
    </div>

<%--    이용방법 --%>
    <div class="subscription_how_to">
        <h5 class="how_tit">꽃 정기구독, 이렇게 시작해보세요!</h5>
        <ul class="how_step list-unstyled">
            <li class="list">
                <span class="ico s1"></span>
                <span class="step fw-bold">01</span>
                <span class="desc">
                    정기구독 상품 중 원하시는<br>꽃 사이즈를 선택해주세요.
                </span>
            </li>
            <li class="list">
                <span class="ico s2"></span>
                <span class="step fw-bold">02</span>
                <span class="desc">
                    꽃을 구독하고 싶은<br>총 기간을 선택해주세요.
                </span>
            </li>
            <li class="list">
                <span class="ico s1"></span>
                <span class="step fw-bold">03</span>
                <span class="desc">
                    꽃을 받고싶은<br>요일을 선택해주세요.
                </span>
            </li>
            <li class="list">
                <span class="ico s1"></span>
                <span class="step fw-bold">03</span>
                <span class="desc">
                    2주에 한번 그 계절 가장<br>예쁜 꽃으로 찾아갈게요.
                </span>
            </li>
        </ul>
        <p class="how_tip"><span class="line">혹시, 일정을 변경하고 싶으신가요?<br>주문 후에는 고객센터를 통해 미리 일정을 변경하실 수 있습니다.</span></p>
    </div>


    </div>

<%@ include file="../main/footer.jspf" %>
<script>
    window.onload = function () {
        subsList();
    }
    function subsList() {
        document.querySelector('.subs_list').style.display = 'block';
        document.querySelector('.subscription_how_to').style.display = 'none';
        document.querySelector('#sub_btn2').style.borderBottom = 'none';
        document.querySelector('#sub_btn1').style.borderBottom = '4px solid #ffcd32';

    }
    function subsInfo() {
        document.querySelector('.subs_list').style.display = 'none';
        document.querySelector('.subscription_how_to').style.display = 'block';
        document.querySelector('#sub_btn1').style.borderBottom = 'none';
        document.querySelector('#sub_btn2').style.borderBottom = '4px solid #ffcd32';
    }
</script>
</body>
</html>
