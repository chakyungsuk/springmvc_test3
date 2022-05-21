<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE HTML>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Favicons -->
    <!-- <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" /> --> <!-- cj아이콘 -->
    <!-- Page Title -->
    <title id="ctl00_headerTitle">차경석의 개인프로젝트</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/common/css/xdmin/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/common/css/xdmin/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="/resources/common/css/xdmin/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/common/css/xdmin/style.css">
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                	<c:if test="${not empty sessSeq}">
	                                    <li class="nav-item" style="padding : 10px;">
	                                        <c:out value="${sessName}"/>
	                                    </li>
	                                    <li> </li>
	                                    <li><a href="" id="btnLogout" class="btn btn-outline-danger top-btn"> logout</a></li>
                                    </c:if>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--//END HEADER -->
    <!--============================= SUBPAGE HEADER BG =============================-->
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>portfolio</h2>
                        <p> <a href=""> 음식레시피 페이지(만개의레시피)</a> / 회원관리 페이지</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= PRICING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>음식레시피</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/manager_image/foodmain.png" width="100%" height="339px"/></li>
                            <li>홈 / 음식상세(이미지,설명,이미지+설명) / 레시피등록 / 로그아웃 </li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/food/FoodMain" class="btn btn-danger">입장하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>회원관리</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/manager_image/memberList.png" width="100%" height="339px"/></li>
                            <li>회원리스트 / 회원상세 / 회원등록 / 회원수정 / 회원삭제</li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/member/memberList" class="btn btn-danger">입장하기</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//END PRICING -->






<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/resources/xdmin/assets/js/jquery-3.2.1.min.js"></script>
<script src="/resources/xdmin/assets/js/popper.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>

<!-- Jquery ui -->
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>

<script>
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			/* ,data : { "IfmmId" : $("#IfmmId").val(), "IfmmPassword" : $("#IfmmPassword").val()} */
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/indexView";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
	});

</script>

</body>

</html>
