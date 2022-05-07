<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<% pageContext.setAttribute("br", "\n"); %>
<% pageContext.setAttribute("lf", "\\n"); %>


<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/navbars/">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">


<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/xdmin/css/navbar.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

 <!-- Bootstrap core Js -->
<script src="/resources/js/validation.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>



<title>Cha html projects</title>

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
   	p {
   		text-align: left;
   		margin-left: 20px;
   	}
   	h5 {
   		text-align: left;
   	}
   	.view_step_cont {
   		margin-top: 20px;
	}
	h3 {
		margin-top: 20px;
	}
	hr {
		text-align: center;
	}
/* 	.input-group {
    position: relative;
    display: table;
    border-collapse: separate; */
</style>


</head>

<body class="text-center">

<%-- <c:forEach items="${foodimage }" var="foodimage" varStatus="status">
	<c:if test="${foodimage.type eq 1 }"> 
		<c:choose>
			<c:when test="${foodimage.sort eq 1}">
				<c:set var="foodimagestep1" value="${foodimage.uuidName}" />
				<c:set var="foodimagepath1" value="${foodimage.path}" />
			</c:when>
			<c:when test="${foodimage.sort eq 2}">
				<c:set var="foodimagestep2" value="${foodimage.uuidName}" />
				<c:set var="foodimagepath2" value="${foodimage.path}" />
			</c:when>
			<c:when test="${foodimage.sort eq 3}">
				<c:set var="foodimagestep3" value="${foodimage.uuidName}" />
				<c:set var="foodimagepath3" value="${foodimage.path}" />
			</c:when>
			<c:when test="${foodimage.sort eq 4}">
				<c:set var="foodimagestep4" value="${foodimage.uuidName}" />
				<c:set var="foodimagepath4" value="${foodimage.path}" />
			</c:when>
			<c:when test="${foodimage.sort eq 5}">
				<c:set var="foodimagestep5" value="${foodimage.uuidName}" />
				<c:set var="foodimagepath5" value="${foodimage.path}" />
			</c:when>
		</c:choose>
	</c:if>
</c:forEach> --%>

<form id="Fooddater" name="Fooddater" method="post" action="/food/Fooddater">
<input type="hidden" id="fdrsSeq" name="fdrsSeq">
	
<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 10px;">
<div class="col-lg-8 col-sm-8" style="text-align: left;" >
 <a class="navbar-brand" href="/food/FoodMain">Ten Thousand Recipes</a>
</div>
<div class="col-lg-3 col-sm-3">
 <a href="/food/Foodreg"><input type="button" id="" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
</div>
<div class="col-lg-1 col-sm-1">
<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
  <span class="navbar-toggler-icon"></span>
</button>
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
      <a href="food/Foodreg" class="nav-link text-white">
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
    <li>
    <a class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"  type="button" id="dropdownMenuLink">
      <img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" alt="" width="32" height="32" class="rounded-circle me-2">
      <strong>CEO CHA</strong>
    </a>
    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
      <li><a class="dropdown-item" href="/member/memberList">Profile Setting</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Login out</a></li>
    </ul>
    </li>
  </ul>
</div>
</div>
<!-- sidebar body E -->	


<div class="container">
	<div class="card mb-3">
		<c:forEach items="${foodimage}" var="foodimage" varStatus="status">
			<c:if test="${foodimage.type eq 0}">
				<div style="text-align: center;">
					<img src="<c:out value="${foodimage.path}"/><c:out value="${foodimage.uuidName }"/>" class="card-img-top" style="height: 500px; width: 800px; margin-top: 20px;">
				</div>
			</c:if>
		</c:forEach>
  	<div class="card-body">
	    <h4 class="card-title" style="margin-bottom: 20px;"><c:out value="${item.fdrsName }"/></h4>
	    <span class="card-text">${fn:replace(item.fdrsIntroduction, lf, "<br>")}</span> 
	    <%-- <span class="card-text">${fn:replace(item.fdrsIntroduction, br, '<br/>')}</span> --%>
	    
	<div class="row" style="text-decoration: underline; margin-top: 30px;" >	   
	<div class="col-4" style="padding-left: 300px;">
		<i class="bi bi-person"></i><br>
		<c:choose>
			<c:when test="${item.fdrsServingsCd eq 1}">1인분</c:when>
			<c:when test="${item.fdrsServingsCd eq 2}">2인분</c:when>
			<c:when test="${item.fdrsServingsCd eq 3}">3인분</c:when>
			<c:when test="${item.fdrsServingsCd eq 4}">4인분</c:when>
			<c:when test="${item.fdrsServingsCd eq 5}">4인분 이상</c:when>
		</c:choose>
    </div>   
	<div class="col-4" style="">
		<i class="bi bi-alarm"></i><br>
		<c:choose>
			<c:when test="${item.fdrsTimeCd eq 5}">5분 이내</c:when>
			<c:when test="${item.fdrsTimeCd eq 10}">10분 이내</c:when>
			<c:when test="${item.fdrsTimeCd eq 15}">15분 이내</c:when>
			<c:when test="${item.fdrsTimeCd eq 20}">20분 이내</c:when>
			<c:when test="${item.fdrsTimeCd eq 25}">25분 이상</c:when>
		</c:choose>  
    </div>   
	<div class="col-4" style="padding-right: 300px;">
		<i class="bi bi-hand-thumbs-up"></i><br>
		<c:choose>
			<c:when test="${item.fdrsDifficultyCd eq 1}">아무나</c:when>
			<c:when test="${item.fdrsDifficultyCd eq 2}">초급</c:when>
			<c:when test="${item.fdrsDifficultyCd eq 3}">중급</c:when>
			<c:when test="${item.fdrsDifficultyCd eq 4}">고급</c:when>
			<c:when test="${item.fdrsDifficultyCd eq 5}">신의 경지</c:when>
		</c:choose>  
	</div>
	</div>
	</div>
	</div>
	
	<div class="card mb-3">
	  <div class="card-body">
	    <h4 class="card-title" style="text-align: left; margin-left: 50px;">재료</h4>
    <div class="container" style="max-width: 60%; text-align: center; justify-content: center;">
	  <div class="row">
	  	<c:forEach items="${material}" var="material" varStatus="status">
		  		<div class="col-6" style="">
				   <li><c:out value="${material.fdmtMaterial}"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${material.fdmtAmount}"/></li>
				   <hr style="margin-top: 5px;">
			    </div>
	    </c:forEach>
	  </div>
	  </div>
	  </div>
	</div>
</div>

<div class="container">
	<div class="card mb-3">
		<div class="card-body">
			<div class="view_step">
            	<div class="best_tit">
						<h2><b>조리순서</b><span>Steps</span></h2>
							<div class="best_tit_rmn" style="text-align: right;">
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView1">이미지</button>
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView2">텍스트</button>
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView3">이미지작게</button>
							</div>
					<div class="" id="tabStepView1"> 
		             	<c:forEach items="${foodimage }" var="foodimage" varStatus="status">
								<c:if test="${foodimage.type eq 1}">
				            		<c:set var="i" value="${status.index}"/>
									<div><h3>Step ${i }</h3></div>
										<div id="stepDiv1" class="view_step_cont media step1"><div id="stepdescr1" class="media-body"><c:out value="${step[status.index - 1].fdspStep}"/></div><br>
										<div id="stepimg1" class=""><img src="<c:out value="${foodimage.path}"/><c:out value="${foodimage.uuidName}"/>" style="height: 600px; width: 80%"></div>
									</div>
									<hr>
								</c:if>
						</c:forEach> 
	            	</div>
				</div>
				<div class="" id="tabStepView2" style="display: none;"><%@ include file="/WEB-INF/views/food/Fooddater2.jsp"%></div>
				<div class="" id="tabStepView3" style="display: none;"><%@ include file="/WEB-INF/views/food/Fooddater3.jsp"%></div>
				
				<dl class="view_step_tip" style="margin-top: 100px;">
					<dt><img src="https://recipe1.ezmember.co.kr/img/tit_tip.gif" alt="팁-주의사항"></dt>
					<br>
					<dd>${fn:replace(item.fdrsTip, br, '<br/>')}</dd>
				</dl>
			</div>
		</div>
	</div>
</div>

<!-- <div class=container>
	<div class="card mb-3">	
		<div class="">
			<h4 class="card-title" style="text-align: left; margin-left: 50px; margin-top: 20px;">요리 후기</h4>
		</div>
		<br>
		
		<div class="">
			<h4 class="card-title" style="text-align: left; margin-left: 50px;">댓글</h4>
		</div>
		<br>
		
		<div class="row" style="justify-content: center;">
			<div class="col-12" style="max-width: 90%;">
				<div class="input-group" style="margin-bottom: 30px;">
					<textarea id="cmt_tx_content1" name="frm[cmt_tx_content]" class="form-control" placeholder="무엇이 궁금하신가요? 댓글을 남겨주세요." style="height:100px; width:80%; resize:none;"></textarea>
					<button class="btn btn-outline-secondary" type="button" id="button-addon2" style="height:100px; width:100px;">등록</button>
				</div>
			</div>
		</div>
	</div>
</div> -->
 
<footer class="text" style="margin-top: 20px;">
	<div class="container">
		<p class="float-end mb-1">
		</p>
		<p class="" style="color: white; text-align: center;">&copy;서울 어딘가의 회사문의전화(운영시간 비밀) 쇼핑문의 : 02-2222-8888 서비스 이용문의 : 000-0000-0000
		<br>Copyright ©EZHLD Inc. All Rights Reserved</p> 
	</div>
	<a href="#" style="color: white;">Back to top</a>
</footer>
	
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

</form>

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
		
		goView2 = function(){
		$("#Fooddater").attr("action","/food/Fooddater2");
		$("#Fooddater").submit();
		}
		
		
 		$("#btnLogin").on("click", function(){
			$("#formLogin").attr("action","/food/foodList");
			$("#formLogin").submit();
		});
		
 	//Step 화면전환	
 		$("#StepView1").on("click",function(){

 			$("#tabStepView1").show();
 			$("#tabStepView2").hide();
 			$("#tabStepView3").hide();
 			    
 			});  
 	
		$("#StepView2").on("click",function(){

			$("#tabStepView1").hide();
			$("#tabStepView2").show();
			$("#tabStepView3").hide();
		    
		});  
		
		$("#StepView3").on("click",function(){

			$("#tabStepView1").hide();
			$("#tabStepView2").hide();
			$("#tabStepView3").show();
		    
		});  
</script>


</body>

</htm1>

