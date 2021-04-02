<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>꽃 정기구독 관리 인덱스</title>
    <%@ include file="../main/b_import.jspf"%>
    <link rel="stylesheet" href="/static/css/item/b_itemManager.css">
</head>
<body>
    <%@ include file="../main/b_header.jspf"%>
    <div id="container" class="mx-auto">
        <nav id="bread-nav" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb mb-xxl-5">
                <li class="breadcrumb-item"><a href="/admin/main">관리자 홈</a></li>
                <li class="breadcrumb-item active" aria-current="page">정기구독 관리</li>
            </ol>
        </nav>
        <div class="d-flex justify-content-center">
            <div class="btn-circle d-flex justify-content-center align-items-center"
                 onclick="location.href='#'">
                배너 등록/수정
            </div>
            <div class="btn-circle d-flex justify-content-center align-items-center"
                 onclick="location.href='/admin/addForm'">
                정기구독 상품 등록
            </div>
            <div class="btn-circle d-flex justify-content-center align-items-center"
                 onclick="location.href='/admin/subsList'">
                정기구독 조회/수정/삭제
            </div>
        </div>
    </div>

    <%@ include file="../main/b_footer.jspf"%>

</body>
</html>
