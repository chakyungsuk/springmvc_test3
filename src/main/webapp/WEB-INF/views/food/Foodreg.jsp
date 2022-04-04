
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
    h4 {
    	margin-top: 10px; 
    	margin-left: 10px;
    }
</style>


</head>

<body class="text-center">

<form id="Foodreg" name="Foodreg" method="post" action="/food/Foodreg">
	
<!-- Header S -->
<div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 10px;">
<div class="col-lg-8 col-sm-8" style="text-align: left;" >
 <a class="navbar-brand" href="/food/FoodMain">Ten Thousand Recipes</a>
</div>
<div class="col-lg-3 col-sm-3">
 <a href=""><input type="button" id="" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
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
    <li>
    <a class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"  type="button" id="dropdownMenuLink">
      <img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" alt="" width="32" height="32" class="rounded-circle me-2">
      <strong>CEO CHA</strong>
    </a>
    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
      <li><a class="dropdown-item" href="#">Profile Setting</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Login out</a></li>
    </ul>
    </li>
  </ul>
</div>
</div>
<!-- sidebar body E -->	

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
<!-- sidebar body E -->	

<div class="container">
	<div class="card mb-3">
		<div class="regi_center">
		<div class="row">
			<div class="regi_title" style="text-align:left;"><h4>레시피 등록</h4></div>
		</div>
		<div class="container" style="max-width: 80%; text-align: center;">
		<div class="row">
			<div class="cont_box pad_l_60">
				<div id="divMainPhotoUpload" class="cont_pic2">
					<div style="position:absolute;left:-3000px"><input type="file" name="q_main_file" id="q_main_file" file_gubun="main" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
					<div id="divMainPhotoBox" is_over="0" style="float: right;">
						<img id="mainPhotoHolder" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
					</div>
				</div>
				<div class="cont_line"><p class="cont_tit4">레시피 제목</p><input type="text" name="cok_title" id="cok_title" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; "></div><br>
				<div class="cont_line pad_b_25"><p class="cont_tit4">요리소개</p><textarea name="cok_intro" id="cok_intro" class="form-control step_cont" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." style="height:100px; width:610px; resize:none;"></textarea></div>
				</div>
			</div>
			</div>
			<hr>
			<div class="cont_line" style="margin-bottom: 40px;"><h4 style="text-align: left;">요리정보</h4>
			<span class="guide" style="text-align: center;">분류를 바르게 설정해주시면, 이용자들이 쉽게 레시피를 검색할 수 있어요.</span><br><br>
				<i class="bi bi-person"></i> <select name="cok_portion" id="cok_portion" text="인원" style="margin-right: 50px;">
					<option value="">인원</option><option value="1">1인분</option>
					<option value="2">2인분</option>
					<option value="3">3인분</option>
					<option value="4">4인분</option>
					<option value="5">5인분</option>
					<option value="6">6인분이상</option>
				</select>
			    <span class="pad_l_30"><i class="bi bi-alarm"></i></span>
				<select name="cok_time" id="cok_time" text="요리시간">
					<option value="">시간</option><option value="5">5분이내</option>
					<option value="10">10분이내</option>
					<option value="15">15분이내</option>
					<option value="20">20분이내</option>
					<option value="30">30분이내</option>
					<option value="60">60분이내</option>
					<option value="90">90분이내</option>
					<option value="120">2시간이내</option>
					<option value="999">2시간이상</option>
				</select>
				<span class="pad_l_30" style="margin-left: 50px;"><i class="bi bi-hand-thumbs-up"></i> </span>
				<select name="cok_degree" id="cok_degree" text="난이도">
					<option value="">난이도</option><option value="1">아무나</option>
					<option value="2">초급</option>
					<option value="3">중급</option>
					<option value="4">고급</option>
					<option value="5">신의경지</option>
				</select>
			</div>
		</div>
	</div><!--/cont_box-->

<div class="card mb-3">
        <span class="guide mag_b_15" style="width:100%;">재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</span>
		<div class="mag_b_25 ui-sortable" id="divMaterialGroupArea"><li id="liMaterialGroup_1"><p class="cont_tit6 st2 mag_r_15"><a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a><input type="text" name="material_group_title_1" id="material_group_title_1" value="재료" class="form-control" style="font-weight:bold;font-size:18px;width:210px;"><span class="cont_tit_btn"><button id="btnAutoMaterialModal" data-toggle="modal" data-target="#divAutoMaterialModal" type="button" data-group_idx="1" class="btn-sm btn-default"><span class="glyphicon glyphicon-import"></span> 한번에 넣기</button><button type="button" onclick="delMaterialGroup(1)" class="btn-sm btn-default"><span class="glyphicon glyphicon-remove"></span> 묶음삭제</button></span></p><ul id="divMaterialArea_1" class="ui-sortable"><li id="liMaterial_1_1"><a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a><input type="text" name="cok_material_nm_1[]" id="cok_material_nm_1_1" class="form-control" style="width:330px;" placeholder="예) 돼지고기"><input type="text" name="cok_material_amt_1[]" id="cok_material_amt_1_1" class="form-control" style="width:280px;" placeholder="예) 300g"><a id="btnMaterialDel_1_1" href="javascript:delMaterial(1,1)" class="btn-del" style="display: none;"></a></li><li id="liMaterial_1_2"><a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a><input type="text" name="cok_material_nm_1[]" id="cok_material_nm_1_2" class="form-control" style="width:330px;" placeholder="예) 양배추"><input type="text" name="cok_material_amt_1[]" id="cok_material_amt_1_2" class="form-control" style="width:280px;" placeholder="예) 1/2개"><a id="btnMaterialDel_1_2" href="javascript:delMaterial(1,2)" class="btn-del" style="display: none;"></a></li><li id="liMaterial_1_3"><a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a><input type="text" name="cok_material_nm_1[]" id="cok_material_nm_1_3" class="form-control" style="width:330px;" placeholder="예) 참기름"><input type="text" name="cok_material_amt_1[]" id="cok_material_amt_1_3" class="form-control" style="width:280px;" placeholder="예) 1T"><a id="btnMaterialDel_1_3" href="javascript:delMaterial(1,3)" class="btn-del" style="display: none;"></a></li></ul><div class="btn_add" style="padding:0 0 20px 350px; width:800px;"><button type="button" onclick="addMaterial(1)" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>추가</button></div></li></div>

        <div class="noti">※ 양념, 양념장, 소스, 드레싱, 토핑, 시럽, 육수 밑간 등으로 구분해서 작성해주세요.
            <div class="noti_btn">
            	<button type="button" onclick="addMaterialGroup('',[],null,'1')" class="btn-lg btn-default"><span class="glyphicon glyphicon-plus"></span> 재료/양념 묶음 추가</button>
			</div>
        </div>
</div>

<div class="card mb-3">
      <input type="file" name="file" id="multifile_1" file_gubun="step" style="display:none;" multiple="">
      <p class="cont_tit3">요리순서
    	  <button type="button" onclick="document.getElementById('multifile_1').click();" class="btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> 순서사진 한번에 넣기</button>
      </p>
	  <span class="guide mag_b_15"><b>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</b><br>
		예) 10분간 익혀주세요 ▷ 10분간 약한불로 익혀주세요.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마늘편은 익혀주세요 ▷ 마늘편을 충분히 익혀주셔야 매운 맛이 사라집니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;꿀을 조금 넣어주세요 ▷ 꿀이 없는 경우, 설탕 1스푼으로 대체 가능합니다.
	  </span>
      <div id="divStepArea" class="ui-sortable"><div id="divStepItem_1" class="step">
            <p id="divStepNum_1" class="cont_tit2_1 ui-sortable-handle" style="cursor:pointer" data-original-title="" title="">Step1</p>
            <div id="divStepText_1" style="display:inline-block">
                <textarea name="step_text[]" id="step_text_1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div id="divStepUpload_1" style="display:inline-block">
                <input type="hidden" name="step_no[]" id="step_no_1" value="">
                <input type="hidden" name="step_photo[]" id="step_photo_1" value="">
                <input type="hidden" name="new_step_photo[]" id="new_step_photo_1" value="">
                <input type="hidden" name="del_step_photo[]" id="del_step_photo_1" value="">
                <div style="position:absolute;left:-3000px"><input type="file" name="q_step_file_1" id="q_step_file_1" file_gubun="step" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
                <div id="divStepPhotoBox_1" is_over="0">
                    <img id="stepPhotoHolder_1" onclick="browseStepFile(1)" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>
            <div id="divStepBtn_1" class="step_btn" style="display: none;">
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up moveUp"></span></a>
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-down moveDown"></span></a>
                <a href="javascript:adjustStep(1)"><b>맞춤</b></a>
                <a href="javascript:addStep(1)"><span class="glyphicon glyphicon-plus"></span></a>
                <a href="javascript:delStep(1)"><span class="glyphicon glyphicon-remove"></span></a>
            </div>

          </div>
          </div>
</div>

<div class="card mb-3">
    <p class="cont_tit4">요리팁</p>
    <textarea name="cok_tip" id="cok_tip" class="form-control step_cont" placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요." style="height:120px; width:620px; resize:none;"></textarea>
</div>

<div class="card mb-3">
	<div class="regi_btm" style="padding-top: 35px; padding-bottom: 40px;">
		<button type="button" class="btn-lg btn-primary">저장</button>
		<button type="button" class="btn-lg btn-warning">저장 후 공개하기</button>
	    <button type="button" class="btn-lg btn-default">취소</button>
     </div>
</div>

</div>
<footer class="text">
  <div class="container">
    <p class="float-end">
      <a href="#" style="color: white;">Back to top</a>
    </p>
<p class="" style="color: white; text-align: center;">&copy; Happy Food 2022 ~</p> 
 </div>
</footer>	
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

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
		

</script>


</form>
</body>

</htm1>

