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



<link rel="shortcut icon" href="https://ifh.cc/g/43bP0g.png" type="image/x-icon" />
<title id="ctl00_headerTitle">Ten Thousand Recipes</title>

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

<form id="Fooddater" name="Fooddater" method="get" action="/food/Fooddater">
<input type="hidden" id="fdrsSeq" name="fdrsSeq">
	
<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 10px;">
<div class="col-lg-8 col-sm-8" style="text-align: left;" >
 <a class="navbar-brand" href="/food/FoodMain">Ten Thousand Recipes</a>
</div>
<div class="col-lg-3 col-sm-3">
 <a href="/food/Foodreg"><input type="button" id="" class="btn" style="color: white;" value="NEW Recipes(????????? ??????)"/></a>
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
      <!-- <a href="food/Foodreg" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
        NEW Recipes
      </a> -->
    </li>
    <li>
     <!--  <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
        MY Recipes
      </a> -->
    </li>
    <hr style="margin-top: 380px;">
      <c:if test="${not empty sessSeq}">
	    <li>
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
</div>
<!-- sidebar body E -->	


<div class="container">
	<div class="card mb-3">
		<c:forEach items="${foodimage}" var="foodimage" varStatus="status">
			<c:if test="${foodimage.type eq 0}">
				<div style="text-align: center;">
					<img src="<c:out value="${foodimage.path}"/><c:out value="${foodimage.uuidName }"/>" class="card-img-top" style="height: 600px; width: 80%; margin-top: 20px;"/>
				</div>
			</c:if>
		</c:forEach>
  	<div class="card-body">
	    <h4 class="card-title" style="margin-bottom: 20px;"><c:out value="${item.fdrsName }"/></h4>
	    <span class="card-text">${fn:replace(item.fdrsIntroduction, lf, "<br>")}</span> 
	    <%-- <span class="card-text">${fn:replace(item.fdrsIntroduction, br, '<br/>')}</span> --%>
	<div class="container">   
		<div class="row" style="text-decoration: underline; margin-top: 30px;" >	   
		<div class="col-3" style="">
			<i class="bi bi-person"></i><br>
			<c:choose>
				<c:when test="${item.fdrsServingsCd eq 1}">1??????</c:when>
				<c:when test="${item.fdrsServingsCd eq 2}">2??????</c:when>
				<c:when test="${item.fdrsServingsCd eq 3}">3??????</c:when>
				<c:when test="${item.fdrsServingsCd eq 4}">4??????</c:when>
				<c:when test="${item.fdrsServingsCd eq 5}">4?????? ??????</c:when>
			</c:choose>
	    </div>   
		<div class="col-3" style="">
			<i class="bi bi-alarm"></i><br>
			<c:choose>
				<c:when test="${item.fdrsTimeCd eq 5}">5??? ??????</c:when>
				<c:when test="${item.fdrsTimeCd eq 10}">10??? ??????</c:when>
				<c:when test="${item.fdrsTimeCd eq 15}">15??? ??????</c:when>
				<c:when test="${item.fdrsTimeCd eq 20}">20??? ??????</c:when>
				<c:when test="${item.fdrsTimeCd eq 25}">25??? ??????</c:when>
			</c:choose>  
	    </div>   
		<div class="col-3" style="">
			<i class="bi bi-hand-thumbs-up"></i><br>
			<c:choose>
				<c:when test="${item.fdrsDifficultyCd eq 1}">?????????</c:when>
				<c:when test="${item.fdrsDifficultyCd eq 2}">??????</c:when>
				<c:when test="${item.fdrsDifficultyCd eq 3}">??????</c:when>
				<c:when test="${item.fdrsDifficultyCd eq 4}">??????</c:when>
				<c:when test="${item.fdrsDifficultyCd eq 5}">?????? ??????</c:when>
			</c:choose>  
		</div>
		<div class="col-3" style="">
			<img src="/resources/xdmin/kakaoicon.png" role="button" onclick="shareKakaotalk();" >
		</div>
		</div>
	</div>
	</div>
	</div>
	
	<div class="card mb-3">
	  <div class="card-body">
	    <h4 class="card-title" style="text-align: left; margin-left: 50px;">??????</h4>
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
						<h2><b>????????????</b><span>Steps</span></h2>
							<div class="best_tit_rmn" style="text-align: right;">
								<span style="color: blue;">????????? ??????????????????! ---></span>
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView1">?????????</button>
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView2">?????????</button>
								<button type="button" class="btn btn-sm btn-outline-secondary" id="StepView3">???????????????</button>
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
					<dt><img src="https://recipe1.ezmember.co.kr/img/tit_tip.gif" alt="???-????????????"></dt>
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
			<h4 class="card-title" style="text-align: left; margin-left: 50px; margin-top: 20px;">?????? ??????</h4>
		</div>
		<br>
		
		<div class="">
			<h4 class="card-title" style="text-align: left; margin-left: 50px;">??????</h4>
		</div>
		<br>
		
		<div class="row" style="justify-content: center;">
			<div class="col-12" style="max-width: 90%;">
				<div class="input-group" style="margin-bottom: 30px;">
					<textarea id="cmt_tx_content1" name="frm[cmt_tx_content]" class="form-control" placeholder="????????? ??????????????????? ????????? ???????????????." style="height:100px; width:80%; resize:none;"></textarea>
					<button class="btn btn-outline-secondary" type="button" id="button-addon2" style="height:100px; width:100px;">??????</button>
				</div>
			</div>
		</div>
	</div>
</div> -->
 
<footer class="text" style="margin-top: 20px;">
	<div class="container">
		<p class="float-end mb-1">
		</p>
		<p class="" style="color: white; text-align: center;">
		??? ????????? ????????? ????????? ????????? 123-1 ????????????<br>   
		???????????? : ?????????<br>
		????????????????????? : 101-11-11170<br>
		<b>???????????? : 1500-0000 (????????? ????????????)</b>   ?????? : 0202-111-2211 (??????????????????)<br>
		??????????????? ??????????????????????????? : ??? 653??? ???????????????????????? <br>
		Copyright &copy; TEN THOUSAND RECIPES 2022 Company, Inc</p> 
	</div>
	<a href="#" style="color: white;">Back to top</a>
</footer>
	
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	

</form>

<script type="text/javascript">
		
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
		
		goView2 = function(){
		$("#Fooddater").attr("action","/food/Fooddater2");
		$("#Fooddater").submit();
		}
		
		
 		$("#btnLogin").on("click", function(){
			$("#formLogin").attr("action","/food/foodList");
			$("#formLogin").submit();
		});
		
 	//Step ????????????	
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

<script>
var name = '<c:out value="${item.fdrsName}"/>';
var name2 = '<c:out value="${item.fdrsIntroduction}"/>';
var seq = '<c:out value="${item.fdrsSeq}"/>';
function shareKakaotalk() {
    Kakao.init("9d80e2a3ed34412759bd6b1eea6603bb");      // ????????? ?????? JavaScript ?????? ??????
    Kakao.Link.sendDefault({
          objectType:"feed"
        , content : {
              title: "????????? ?????? ????????? ?????????!!"   // ???????????? ?????????
            , description: "?????? ????????? : "+ name +"\n"+ "?????? ??????" + name2// ????????? ????????????
            , imageUrl: "https://ifh.cc/g/trK3PF.jpg"   // ????????? ?????????
            , link : {
                  mobileWebUrl: "http://54.151.88.85/food/Fooddater?fdrsSeq="  + seq  // ????????? ?????????????????? ???????????? ??? ?????? URL
                , webUrl:"http://54.151.88.85/food/Fooddater?fdrsSeq="  + seq// PC?????? ?????????????????? ???????????? ??? ?????? URL
            }
    
        }
        , buttons : [
            {
                  title:"????????? ????????????"    // ?????? ??????
                , link : {
                    mobileWebUrl:"http://54.151.88.85/food/Fooddater?fdrsSeq="  + seq  // ????????? ?????????????????? ???????????? ??? ?????? URL
                  , webUrl:"http://54.151.88.85/food/Fooddater?fdrsSeq="  + seq// PC?????? ?????????????????? ???????????? ??? ?????? URL
                }
            }
        ]
    });
}
		
</script>

</body>

</htm1>

