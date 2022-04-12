<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/navbars/">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">

<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/xdmin/css/navbar.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/headers/headers.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">
 
<!-- naverLogin -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
 
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<title>Cha html projects</title>

<style type="text/css">
	body {
		width: 100%;
		/* background-image: url('../../../images/user_image/backC.jpg'); */
		background-size: cover;
		background-color: gray;
		background-repeat : no-repeat; 
	}
/* 	.album {
		background-image: url('../../../images/user_image/backC.jpg');
		background-size: cover;
	} */
    .input {
		text-align:center;
		justify-content:center;
		margin-bottom: 20px;
   	}
</style>

</head>

<body class="text-center">

<form id="FoodMain" name="FoodMain" method="post" action="/food/FoodMain">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">	
<input type="hidden" id="fdrsSeq" name="fdrsSeq">

<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 2px;">
	<div class="col-lg-8 col-sm-8" style="text-align: left;" >
		<a class="navbar-brand" href="/food/FoodMain">Ten Thousand Recipes</a>
	</div>
	<div class="col-lg-3 col-sm-3">
		<a href="/food/FoodInst"><input type="button" id="signUp" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
	</div>
	<div class="col-lg-1 col-sm-1">
	<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
		<span class="navbar-toggler-icon"></span>
	</button>
	</div>
</div>
<!-- Header E -->

 <!-- sidebar body S -->	
<div class="offcanvas offcanvas-end flex-shrink-0 p-3 text-white bg-dark " tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header" style="padding-bottom: 0px;">
   <h5 id="offcanvasRightLabel">MENU</h5>
   <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
 </div>
 <hr>
  <ul class="nav nav-pills flex-column mb-auto">
    <li class="nav-item">
      <a href="/food/FoodMain" class="nav-link active" aria-current="page">
        <svg class="bi me-2" width="16" height="16"></svg>
        Home(Main)
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
        NEW Recipes
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
        MY Recipes
      </a>
    </li>
    <hr style="margin-top: 380px;">
      <c:if test="${not empty sessSeq}">
	    <li>
	    <a class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"  type="button" id="dropdownMenuLink">
	      <img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" alt="" width="32" height="32" class="rounded-circle me-2">
	      <strong><c:out value="${sessId }"/> 회원님 안녕하세요.</strong>
	    </a>
	    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
	      <li><a class="dropdown-item" href="#">Profile Setting</a></li>
	      <li><hr class="dropdown-divider"></li>
	     	 <li><a class="dropdown-item" type="button" id="btnLogout">Login out</a></li>
	    </ul>
      </c:if>
    </li>
  </ul>
</div>
<!-- sidebar body E -->	


<!-- Body S -->
<iframe width="100%" height="620" src="https://play-tv.kakao.com/embed/player/cliplink/378098892?service=player_share&autoplay=1&mute=1&loop=1" allowfullscreen frameborder="0" scrolling="no" allow="autoplay; fullscreen; encrypted-media" loop="loop"></iframe>


	
<div class="album py-5 bg-light">
	<div class="col-12">
		<h4 style="margin-bottom: 30px;">TOP 레시피 명예의 전당</h4>
	</div>
    <div class="container">
      <div class="row row-cols-3 row-cols-sm-3 row-cols-md-3 g-3">
	
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">No data!</td>
			</tr>	
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">		
				
					<div class="col">
						<div class="card shadow">
							<a class="thumbnail" style="height:250px;"><img src="/resources/xdmin/image/user_image/lank2.jpg" style="margin-top: 20px;"></a>
							<div class="card-body" style="">
								<p class="card-text"><c:out value="${item.fdrsName }"/></p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="javascript:goView(<c:out value="${item.fdrsSeq}"/>)"><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
									</div>
									<small class="text-muted"><fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></small>
								</div>
							</div>
						</div>
					</div>
        
					</c:forEach>
				</c:otherwise>
			</c:choose>	
		</div>
		
<nav aria-label="..." style="margin-top: 40px;">
	<ul class="pagination justify-content-center">
		  
<!-- Previous -->
	<c:if test="${vo.startPage gt vo.pageNumToShow}">
		<li class="page-item"><a class="page-link" href='javascript:void(0);' onclick="goList('<c:out value='${vo.startPage - 1}'/>');">Previous</a></li>
	</c:if>
	
<!-- Page -->    
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">  
				<li class="page-item active"><a class="page-link" href='javascript:void(0);' onclick="goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
				<li class="page-item"><a class="page-link" href='javascript:void(0);' onclick="goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>  
	
<!-- Next -->
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href='javascript:void(0);' onclick="goList('<c:out value='${vo.endPage + 1}'/>');">Next</a></li>
	</c:if>
	
<!-- Page E -->
	</ul>
</nav>

	</div>
</div>

<div class="container" style="margin-top: 20px;">
	<div class="row">
		<div class="col-sm-4">
			<div class="card">
				<a href="#" class="btn"><img src="https://recipe1.ezmember.co.kr/cache/rpe/2022/03/08/5bf841be02faba75b9004922051164d31.jpg" style="width:360px; border: 1px solid #eee;"></a>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<a href="#" class="btn"><img src="https://recipe1.ezmember.co.kr/cache/rpe/2022/02/07/52315331a43fddda7d1d806eb012aff41.jpg" style="width:360px; border: 1px solid #eee;"></a>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card">
				<a href="#" class="btn"><img src="https://recipe1.ezmember.co.kr/cache/rpe/2021/10/18/ad85ee0ef9a5e19b0547cef2344525b91.jpg" style="width:360px; border: 1px solid #eee;"></a>
			</div>
		</div>
	</div>
</div>


<footer class="text" style="margin-top: 20px;">
  <div class="container">
    <p class="float-end mb-1">
    </p>
<p class="" style="color: white; justify-content: center;">&copy;
서울 어딘가의 회사
문의전화(운영시간 비밀)
쇼핑문의 : 02-2222-8888
서비스 이용문의 : 000-0000-0000
<br>
Copyright ©EZHLD Inc. All Rights Reserved</p> 
 </div>
      <a href="#" style="color: white;">Back to top</a>
</footer>



<!-- Bootstrap core Js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">

	goList = function(seq){
		$("#thisPage").val(seq)		// form 객체를 가져온다.
		$("#FoodMain").submit();	// 그 가져온 객체를 전달한다.
	}

	$("#dropdownMenuLink").click(function() { //드롭다운 버튼을 눌렀을 때
		 
		//Following events are applied to the subnav itself (moving subnav up and down)
		$(this).parent().find(".dropdown-menu").slideDown('fast').show(); //Drop down the subnav on click
	
		$(this).parent().hover(function() {
		}, function(){
			$(this).parent().find(".dropdown-menu").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
		});
	
	/*  			//마우스가 메뉴에 올려지면 동작 (Hover events for the trigger)
		}).hover(function() {
			$(this).addClass("subhover"); //on hover over, add class "subhover"
		}, function(){	//마우스가 메뉴에서 벗어나면 동작
			$(this).removeClass("subhover"); //on hover out, remove class "subhover" */
	});

	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/food/logoutProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/food/FoodLogin";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	goView = function(seq){
		$("#fdrsSeq").val(seq)	
		$("#FoodMain").attr("action","/food/Fooddater");
		$("#FoodMain").submit();
	}
</script>



<!-- 카카오 정보-->
<script>
	Kakao.init('9d80e2a3ed34412759bd6b1eea6603bb');
	console.log(Kakao.isInitialized());


	kakaoLogin = function(){ 
//리다이렉트 된 후 토큰값을 이용하여 사용자 정보를 받을 코드
	Kakao.Auth.login({ 
			success : function(authObj) {		
				console.log(authObj);

				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {

						console.log(res);
						console.log(res.id);
						console.log(res.kakao_account.email);
						console.log(res.properties.nickname);
					}
				})
			}
		});
	}
</script>
<script>
 
/* kakao 로그아웃 */    
    window.Kakao.init('9d80e2a3ed34412759bd6b1eea6603bb');
	function kakaoLogout() {
    	if (!Kakao.Auth.getAccessToken()) {
		    console.log('Not logged in.');
		    return;
	    }
	    Kakao.Auth.logout(function(response) {
    		alert(response +' logout');
		    window.location.href='/'
	    });
	};

</script>

<font id="name"></font> <!-- (body에 사용) -->

<script type="text/javascript">
  $(document).ready(function() {
	    var name = ${result}.response.nickname;
	    $("#name").html(name); //font 부분에 텍스트 바꾸기
	    });
	  //location.href = "${pageContext.request.contextPath}/";
</script>


</form>
</body>

</htm1>


