<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
  
<htm1 lang="ko">
  
<head>
<link rel="shortcut icon" href="https://ifh.cc/g/43bP0g.png" type="image/x-icon" />
<title id="ctl00_headerTitle">Ten Thousand Recipes</title>

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

<style type="text/css">
	body {
		width: 100%;
		/* background-image: url('../../../images/user_image/backC.jpg'); */
		background-size: cover;
		background-color: #222222;
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

<form id="FoodMain" name="FoodMain" method="get" action="/food/FoodMain">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">	
<input type="hidden" id="fdrsSeq" name="fdrsSeq">

<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 2px;">
	<div class="col-lg-7 col-sm-6" style="text-align: left;" >
		<a class="navbar-brand" href="/food/FoodMain">Ten Thousand Recipes</a>
	</div>
	<div class="col-lg-2 col-sm-3">
		<c:if test="${empty sessSeq}"><a href="/member/memberForm"><input type="button" id="signUp" class="btn" style="color: white;" value="login(????????????)"/></a></c:if>
	</div>
	<div class="col-lg-2 col-sm-2">
		<a href="/food/Foodreg"><input type="button" id="signUp" class="btn" style="color: white;" value="NEW Recipes(????????? ??????)"/></a>
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
      <a href="/food/Foodreg" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
        NEW Recipes
      </a>
    </li>
    <!-- <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
        MY Recipes
      </a>
    </li> -->
    <hr style="margin-top: 380px;">
    <li>
      <c:if test="${not empty sessSeq}">
	    <a class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"  type="button" id="dropdownMenuLink">
	      <img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" alt="" width="32" height="32" class="rounded-circle me-2">
	      <strong id="name"><c:out value="${sessName }"/> ????????? ???????????????.</strong>
	    </a>
	    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
	      <li><a class="dropdown-item" href="/member/memberList">Profile Setting</a></li>
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

	
<div class="album py-5" style="background-color: #222222;">
	<div class="col-12">
		<h3 style="margin-bottom: 50px; color: white;">TOP ????????? ????????? ??????</h3>
	</div>
    <div class="container">
      <div class="row row-cols-3 row-cols-sm-3 row-cols-md-3 g-5">
	
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">No data!</td>
			</tr>	
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">		
				
					<div class="col">
						<div class="card shadow" style="background-color: transparent;">
							<a href="javascript:goView(<c:out value="${item.fdrsSeq}"/>)">
							<img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" style="margin-top: 20px; height: 280px; width: 90%;">	
							</a>
							<div class="card-body" style="">
								<p class="card-text" style="color: white;"><c:out value="${item.fdrsName }"/></p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">????????? <fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></small>
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

<footer class="text" style="background-color: black;">
<br><br>
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
<br>
<br>
  <div class="container">
    <p class="float-end mb-1">
    </p>
<p class="" style="color: white; justify-content: center;">
??? ????????? ????????? ????????? ????????? 123-1 ????????????<br>   
???????????? : ?????????<br>
????????????????????? : 101-11-11170<br>
<b>???????????? : 1500-0000 (????????? ????????????)</b>   ?????? : 0202-111-2211 (??????????????????)<br>
??????????????? ??????????????????????????? : ??? 653??? ???????????????????????? <br>
Copyright &copy; TEN THOUSAND RECIPES 2022 Company, Inc</p> 
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
		$("#thisPage").val(seq)		// form ????????? ????????????.
		$("#FoodMain").submit();	// ??? ????????? ????????? ????????????.
	}

	$("#dropdownMenuLink").click(function() { //???????????? ????????? ????????? ???
		 
		//Following events are applied to the subnav itself (moving subnav up and down)
		$(this).parent().find(".dropdown-menu").slideDown('fast').show(); //Drop down the subnav on click
	
		$(this).parent().hover(function() {
		}, function(){
			$(this).parent().find(".dropdown-menu").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
		});
	
	/*  			//???????????? ????????? ???????????? ?????? (Hover events for the trigger)
		}).hover(function() {
			$(this).addClass("subhover"); //on hover over, add class "subhover"
		}, function(){	//???????????? ???????????? ???????????? ??????
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
					alert("????????????");
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



<!-- ????????? ??????-->
<script>
	Kakao.init('9d80e2a3ed34412759bd6b1eea6603bb');
	console.log(Kakao.isInitialized());


	kakaoLogin = function(){ 
//??????????????? ??? ??? ???????????? ???????????? ????????? ????????? ?????? ??????
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
 
/* kakao ???????????? */    
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

<font id="name"></font> <!-- (body??? ??????) -->

<script type="text/javascript">
	  $(document).ready(function() {
	    var name = ${result}.response.name;
	    $("#name").html(name); 
	    });
	 // location.href = "/";
</script>




</form>
</body>

</htm1>


