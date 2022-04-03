
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
<script src="/resources/xdmin/js/bootstrap.sidebars.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>



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
/* 	.input-group {
    position: relative;
    display: table;
    border-collapse: separate; */
</style>


</head>

<body class="text-center">

<form id="Fooddater" name="Fooddater" method="post" action="/food/Fooddater">
	
<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 10px;">
<div class="col-lg-8 col-sm-8" style="text-align: left;" >
 <a class="navbar-brand" href="#">Ten Thousand Recipes</a>
</div>
<div class="col-lg-3 col-sm-3">
 <a href=""><input type="button" id="signUp" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
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
   <h5 id="offcanvasRightLabel">Recipes MENU</h5>
   <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
 </div>
 <hr>
  <ul class="nav nav-pills flex-column mb-auto">
    <li class="nav-item">
      <a href="food/FoodMain" class="nav-link active" aria-current="page">
        <svg class="bi me-2" width="16" height="16"></svg>
        Home
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
        Dashboard
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
        Orders
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
        Products
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
        Customers
      </a>
    </li>
  </ul>
      <hr>
  <div class="dropdown">
    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
      <img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" alt="" width="32" height="32" class="rounded-circle me-2">
      <strong>CEO CHA</strong>
    </a>
    <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
      <li><a class="dropdown-item" href="#">New project...</a></li>
      <li><a class="dropdown-item" href="#">Settings</a></li>
      <li><a class="dropdown-item" href="#">Profile</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Sign out</a></li>
    </ul>
  </div>
</div>
</div>
<!-- sidebar body E -->	
<div class="container">
	<div class="card mb-3">
		<div style="text-align: center;">
			<img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/32775e06923a4bef0cb6093ff84d28ef1.jpg" class="card-img-top" style="height: 500px; width: 800px; margin-top: 20px;">
		</div>
  	<div class="card-body">
	    <h4 class="card-title" style="margin-bottom: 20px;">백파더 백종원 에그치즈토스트 ~ 간단한데 맛은 최고!</h4>
	    <span class="card-text">요즘 백파더 백종원 에그치즈토스트가 대유행이라죠! <br> 칼질도 필요 없고, 원팬으로 만들기로 간단하지만 맛은 대박~ <br> 요건 꼭 만들어 보세요 에그드랍 가실 필요 없어요^^</span>
	<div class="row" style="text-decoration: underline; margin-top: 30px;" >	   
	<div class="col-4" style="padding-left: 300px;">
		<i class="bi bi-person"></i><br>
		<span>2인분</span>  
    </div>   
	<div class="col-4" style="">
		<i class="bi bi-alarm"></i><br>
		<span>15분 이내</span>  
    </div>   
	<div class="col-4" style="padding-right: 300px;">
		<i class="bi bi-hand-thumbs-up"></i><br>
		<span>아무나</span>  
	</div>
	</div>
	</div>
	</div>
	
	<div class="card mb-3">
	  <div class="card-body">
	    <h4 class="card-title" style="text-align: left; margin-left: 50px;">재료</h4>
    <div class="container" style="max-width: 60%; text-align: center;">
	  <div class="row">
	  	<div class="col-6" style="">
		    <h5 class="card-text">[재료]</h5><br>
		    <p>식빵</p>
		    <p>체다슬라이스치즈</p>
		    <p>소금</p>
		    <p>계란</p>
	    </div>
	  	<div class="col-6" style="padding-left: 90px;">
		    <h5 class="card-text">[양념]</h5><br>
		    <p>과일잼(또는 설탕)</p>
		    <p>버터(또는 식용유)</p>
	    </div>
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
							<a href="food/Fooddater1" ><img id="tabStepView1" src="https://recipe1.ezmember.co.kr/img/mobile/tab_view1_on.png" alt="이미지크게보기" style="width: 40px; height: 40px;"></a>
							<a href="food/Fooddater2" ><img id="tabStepView2" src="https://recipe1.ezmember.co.kr/img/mobile/tab_view2.png" alt="텍스트만보기" style="width: 40px; height: 40px;"></a>
							<a href="food/Fooddater3" ><img id="tabStepView3" src="https://recipe1.ezmember.co.kr/img/mobile/tab_view3.png" alt="이미지작게보기" style="width: 40px; height: 40px;"></a>
						</div>
            	</div>
				<div id="stepDiv1" class="view_step_cont media step1">
				<div><h3>Steps 1</h3></div>
					<div id="stepdescr1" class="media-body">(토스트 2개 만드는 양입니다 )계란 3개과 버터를 준비합니다</div>
					<div id="stepimg1" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/08ec68d5f3c61a56d06701b9133364ab1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 2</h3></div>
				<div id="stepDiv2" class="view_step_cont media step2"><div id="stepdescr2" class="media-body">식빵2장, 체다슬라이스치즈 4장, 과일잼을 준비합니다</div>
					<div id="stepimg2" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/bc80a9c22e700e0ba22b895d04cd0ade1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 3</h3></div>
				<div id="stepDiv3" class="view_step_cont media step3"><div id="stepdescr3" class="media-body">계란 3개를 깨뜨려 소금을 약간만 뿌려 곱게 풀어 주세요</div>
					<div id="stepimg3" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/b8ed39243bcc95987ea6348eef8217ca1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 4</h3></div>
				<div id="stepDiv4" class="view_step_cont media step4"><div id="stepdescr4" class="media-body">중 사이즈의 팬을 사용하시면 좋아요. <br>약불에 버터를 녹여 주세요<br>버터가 없다면 식용유를 사용하세요</div>
					<div id="stepimg4" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/ba99b906b2e785aac197eca3d12df81c1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 5</h3></div>
				<div id="stepDiv5" class="view_step_cont media step5"><div id="stepdescr5" class="media-body">계란물 1.5개(절반)의 양을 부어 주세요</div>
					<div id="stepimg5" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/83f6c74a020fe0b1343a5933c710f9561.jpg" style=""></div>
				</div>
				<hr>
				<div><h3>Steps 6</h3></div>
				<div id="stepDiv6" class="view_step_cont media step6"><div id="stepdescr6" class="media-body">계란이 가장자리가 익고 가운데 부분이 몽글하게 익으면 <br>가운데 식빵을 1개 올려 주세요 .<br>계란을 지단처럼 뻑뻑하게 익히지 마시고, 보드랍게 살짝만 익혀야 <br>먹을때 부드럽고 맛도 좋아요</div>
					<div id="stepimg6" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/c18d8abdb685276fb09053b11d5146f31.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 7</h3></div>
				<div id="stepDiv7" class="view_step_cont media step7"><div id="stepdescr7" class="media-body">그리고 계란과 빵을 함께 뒤집어 주세요 . 뒤집개 2개 사용하시면 편해요 <br>이때부터 아주 약불을 유지해 주세요</div>
					<div id="stepimg7" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/550fc5a9a4b94c7bf1f8637e9482654e1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 8</h3></div>
				<div id="stepDiv8" class="view_step_cont media step8"><div id="stepdescr8" class="media-body">빵 밖으로 나온 계란의 가장자리 네 부분을, 뒤집개와 집개를 이용해 접어서 위로 올려 줍니다<br>(이 때 손이 빠르지 않으시면 불을 잠시 꺼두세요 빵이 타버릴수 있어요)</div>
					<div id="stepimg8" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/7b16853f856ac4acbb362cd6adc743201.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 9</h3></div>
				<div id="stepDiv9" class="view_step_cont media step9"><div id="stepdescr9" class="media-body">반듯하게 예쁘게 접어 올리지 않으셔도 되요 ^^</div>
					<div id="stepimg9" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/1a8de93ad071635e6898d7de8facd24d1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 10</h3></div>
				<div id="stepDiv10" class="view_step_cont media step10"><div id="stepdescr10" class="media-body">계란 위에 치즈 2장을 사용해~ 빈곳 없이 채워 올려 주세요 .</div>
					<div id="stepimg10" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/d8d63a4eba008f95d8aff6faef797cc81.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 11</h3></div>
				<div id="stepDiv11" class="view_step_cont media step11"><div id="stepdescr11" class="media-body">치즈 위에 과일잼을 바릅니다 , 가장 자리 부분을 빼고 발라야 접었을 때 밖으로 새어나오지 않아요 . <br>( 잼이 없으면 설탕을 뿌려 주세요)</div>
					<div id="stepimg11" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/60e1ae7d7f46b64785266dbe78dc838d1.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 12</h3></div>
				<div id="stepDiv12" class="view_step_cont media step12"><div id="stepdescr12" class="media-body">빵 가운데를 뒤집개로 눌러서 자국을 내어 주세요</div>
					<div id="stepimg12" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/232c5122761322b2c78da4942f2753a41.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 13</h3></div>
				<div id="stepDiv13" class="view_step_cont media step13"><div id="stepdescr13" class="media-body">자르는 것이 아니라 자국만 내어주시는 거랍니다</div>
					<div id="stepimg13" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/02a41a34af2b11cc925e2ea87dce34c21.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 14</h3></div>
				<div id="stepDiv14" class="view_step_cont media step14"><div id="stepdescr14" class="media-body">그리고 자국낸 쪽을 안으로 반접어 주시면 완성입니다</div>
					<div id="stepimg14" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/07280c8bbc9dcea1d28ce9a0219997f31.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 15</h3></div>
				<div id="stepDiv15" class="view_step_cont media step15"><div id="stepdescr15" class="media-body">맛있고 간단한 백종원 에그치즈토스트 완성입니다~<br>레시피는 간단한데 먹어 보면 깜짝 놀랄맛 ~<br>파슬리가루 있으심 뿌려주시면<br>더 이쁘고 먹음직스러워요^^</div>
					<div id="stepimg15" class=""><img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/18/6f8fa2e0dd2a1f20c5995606c253c0061.jpg"></div>
				</div>
				<hr>
				<div><h3>Steps 16</h3></div>
					<div id="stepDiv16" class="view_step_cont media step16"><div id="stepdescr16" class="media-body">에그드랍 사드실 필요 없어요 .<br>꼭 만들어 보세요 ^^</div>
				</div>       


				<dl class="view_step_tip" style="margin-top: 100px;">
					<dt><img src="https://recipe1.ezmember.co.kr/img/tit_tip.gif" alt="팁-주의사항"></dt>
					<dd>원래의 백파더 에그치즈토스트는 버터와 잼대신 , 식용유와 설탕을 사용했어요 ~ 저는 버터와 잼으로 변경하며 만든레시피 입니다 . <br>버터를 사용하면 풍미가 더욱 좋고 , 설탕을 싫어하시는 분들은 잼을 사용하셔도 아주 맛있답니다 ~</dd>
				</dl>
			</div>
		</div>
	</div>
</div>

<div class=container>
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
</div>
 
<footer class="text">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#" style="color: white;">Back to top</a>
    </p>
<p class="" style="color: white; text-align: center;">&copy; Happy Food 2022 ~</p> 
 </div>
</footer>	
	
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
	

<script type="text/javascript">
		
		$("#btnLogin").on("click", function(){
			$("#formLogin").attr("action","/food/foodList");
			$("#formLogin").submit();
		});
		
		$("#signUp").mouseover(function(){
			$('#signUp').val('회원가입')
		});
		$("#signUp").mouseout(function(){
			$('#signUp').val('SignUp');
		});
		$("#signUp").on("click", function(){
			$("#formLogin").attr("action","/member/memberForm")
			$("#formLogin").submit();
		});
		
		$("#FindPW").mouseover(function(){
			$('#FindPW').val('비밀번호찾기')
		});
		$("#FindPW").mouseout(function(){
			$('#FindPW').val('Find Password');
		});
		$("#FindPW").on("click", function(){
			$("#formLogin").attr("action","/member/memberFindPW")
			$("#formLogin").submit();
		});

		
	
	

</script>





</form>
</body>

</htm1>

