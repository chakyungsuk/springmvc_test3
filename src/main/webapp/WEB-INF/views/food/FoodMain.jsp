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
		<a href="/food/Foodreg"><input type="button" id="signUp" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
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
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd_re1.png" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd6-1.jpg" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd3.jpg" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	
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
	</div>
</div>


<footer class="text">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#" style="color: white;">Back to top</a>
    </p>
<p class="" style="color: white; justify-content: center;">&copy; Happy Food 2022 ~</p> 
 </div>
</footer>



<!-- Bootstrap core Js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>

<script type="text/javascript">

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
		alert("asd")
		$("#fdrsSeq").val(seq)	
		$("#FoodMain").attr("action","/food/Fooddater");
		$("#FoodMain").submit();
	}
</script>

</form>
</body>

</htm1>


