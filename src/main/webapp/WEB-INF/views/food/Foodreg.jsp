
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
/* 	.input-group {
    position: relative;
    display: table;
    border-collapse: separate; */
    h4 {
    	text-align: left;
    	float: left;
    	margin-top: 10px; 
    	margin-left: 10px;
    }

	
</style>


</head>

<body class="text-center">

<form id="FoodInst" name="FoodInst" method="post" action="/food/FoodInst" enctype="multipart/form-data">
	
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
      <a href="/food/Foodreg" class="nav-link text-white">
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


<div class="container">
	<div class="card mb-3">
		<div class="regi_center">
		<div class="row">
			<div class="regi_title" style="text-align:left;"><h4>레시피 등록</h4></div>
		</div>
		<div class="container" style="max-width: 80%; text-align: center;">
			<div class="row">
				<div class="cont_box pad_l_60">
						<div id="image_container" style="float: right;">
						<label for="file0">
							<img id="image_hide" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
							<input class="form-control" type="file" name="file0" id="file0" accept="jpeg,png,gif" style="display:none;" multiple="multiple" onchange="setThumbnail(event);"/>
						</label>							
						</div>
					<div class="cont_line"><p class="cont_tit4">레시피 제목</p><input type="text" name="fdrsName" id="fdrsName" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px;" autocomplete="off"></div><br>
					<div class="cont_line pad_b_25"><p class="cont_tit4">요리소개</p><textarea name="fdrsIntroduction" id="fdrsIntroduction" class="form-control step_cont" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." style="height:100px; width:610px; resize:none;" autocomplete="off"></textarea></div>
				</div>
			</div>
		</div>
			<hr>
			<div class="cont_line" style="margin-bottom: 40px;"><h4 style="text-align: left;">요리정보</h4>
			<span class="guide" style="text-align: center;">분류를 바르게 설정해주시면, 이용자들이 쉽게 레시피를 검색할 수 있어요.</span><br><br>
				<i class="bi bi-person"></i> <select id="fdrsServingsCd" name="fdrsServingsCd" text="인원" style="margin-right: 50px;">
					<option value="">인원</option>
					<option value="1">1인분</option>
					<option value="2">2인분</option>
					<option value="3">3인분</option>
					<option value="4">4인분</option>
					<option value="5">4인분이상</option>
				</select>
			    <span class="pad_l_30"><i class="bi bi-alarm"></i></span>
				<select id="fdrsTimeCd" name="fdrsTimeCd" text="요리시간">
					<option value="">시간</option>
					<option value="5">5분이내</option>
					<option value="10">10분이내</option>
					<option value="15">15분이내</option>
					<option value="20">20분이내</option>
					<option value="25">25분이상</option>
				</select>
				<span class="pad_l_30" style="margin-left: 50px;"><i class="bi bi-hand-thumbs-up"></i> </span>
				<select id="fdrsDifficultyCd" name="fdrsDifficultyCd" text="난이도">
					<option value="">난이도</option>
					<option value="1">아무나</option>
					<option value="2">초급</option>
					<option value="3">중급</option>
					<option value="4">고급</option>
					<option value="5">신의경지</option>
				</select>
			</div>
		</div>
	</div><!--/cont_box-->
	
<div class="card mb-3">
	 <h4>재료</h4><b style="text-align: center;">재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</b>
		 <p class="cont_tit6 st2 mag_r_15"><a href="#" class="btn-lineup ui-sortable-handle" id="divMaterialArea"></a></p>
	 	<div class="container" style="max-width: 60%; text-align: center;" >
			 <div id="divMaterialArea_1" class="ui-sortable" style="text-align: center; margin-left: 43px;">
				 <div id="" style="margin-bottom: 10px;">
					 <input type="text" name="fdmtMaterial" id="fdmtMaterial" class="form-control" style="width:330px; float: left; margin-right: 10px;" placeholder="예) 돼지고기" autocomplete="off">
					 <input type="text" name="fdmtAmount" id="fdmtAmount" class="form-control" style="width:310px; margin: 0;" placeholder="예) 300g" autocomplete="off">
				 </div>
			 </div>
			 <br>
			 <div>
				 <button class="btn btn-lg-danger" type="button" onclick="MaterialCreate()" id="" name="">추가</button>
			 </div>
		 <div class="btn_add" style="padding:0 0 20px 350px; width:800px;"></div>
		 </div>
</div>


<div class="card mb-3">
      <h4>요리순서</h4>
      <div class="" style="text-align: left;">
	      <input type="file" name="" id="multifile" style="display:none;" multiple="multiple">
	      <button type="button" onclick="document.getElementById('multifile').click();" class="btn-sm btn btn-info">
			<i class="bi bi-patch-plus-fill"></i> 순서사진 한번에 넣기
	      </button>
      </div>
      <br>
	  <span class="guide mag_b_15"><b>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</b><br>
		예) 10분간 익혀주세요 ▷ 10분간 약한불로 익혀주세요.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마늘편은 익혀주세요 ▷ 마늘편을 충분히 익혀주셔야 매운 맛이 사라집니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;꿀을 조금 넣어주세요 ▷ 꿀이 없는 경우, 설탕 1스푼으로 대체 가능합니다.
	  </span><br>
	  
      <div id="divStepArea" class="ui-sortable">
      <div class="container" style="max-width: 80%; text-align: center;">
          <div class="row" id="StepCount" style="justify-content: center;">
          
			<div class="col-12" style="max-width: 80%;">
				<div class="input-group" style="margin-bottom: 30px;">
          			<h4 id="" style="margin-right: 30px;">Step 1</h4>
					<textarea id="fdspStep" name="fdspStep" class="form-control" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:200px; resize:none; float: left;"></textarea>
					<div class="" id="step1">
					<label for="file1">
						<img class="step_image" id="" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
					</label>
						<input class="" type="file" name="file1" id="file1" accept="jpeg,png,gif" style="display:none;" onchange="setThumbnail_Food(event)">
					</div>
					<button class="btn" onclick="StepDelete(this)" id="remove"><i class="bi bi-x-circle" style="size: 20px;  margin-top: 15px;"></i></button>
				</div>
			</div>
          
		</div>
			
			 <div style="margin-bottom: 20px;">
				 <button class="btn btn-lg-danger" type="button" onclick="StepCreate();" id="" name="">Step 추가</button>
			 </div>
          
          </div>
	</div>
</div>

<div class="card mb-3" style="text-align: center;">
    <h4>요리팁</h4><br>
    <textarea name="fdrsTip" id="fdrsTip" onkeyup="checkByte(this)" class="form-control step_cont" placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요." style="height:120px; max-width:90%; resize:none; margin: auto; margin-bottom: 30px;"></textarea>
    <sup>(<span id="nowByte">0</span>/100bytes)</sup>
	<div class="regi_btm" style="padding-top: 35px; padding-bottom: 40px;">
		<button type="submit" id="btnSubmit" name="btnSubmit" class="btn-lg btn-primary">등록</button>
	    <button type="button" class="btn-lg btn-default">취소</button>
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
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

<script type="text/javascript">
		
		$("#btnSubmit").on("click", function(){
			var answer = confirm("등록 하시겠습니까?")
			
			if(answer){
				$("#btnSubmit").attr("action", "/member/memberInst");
				$("#btnSubmit").submit(); 
			} else {
				return false;
			}
		
		});
		
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
		
		function MaterialCreate(){
			var html = '';
		 	var remove = $("remove").val(); 
						
/* 			var Name = $("#MaterialName").val();
			var Amount = $("#MaterialAmount").val(); */
			
						
			html += '<div id="" style="margin-bottom: 10px;">';
			html += '<input type="text" name="fdmtMaterialArray" id="fdmtMaterialArray" class="form-control" style="width:330px; float: left; margin-right: 10px; margin-bottom: 8px;" placeholder="예) 양배추" autocomplete="off">';
			html += '<input type="text" name="fdmtAmountArray" id="fdmtAmountArray" class="form-control" style="width:310px; float:left; margin-bottom: 8px;"; placeholder="예) 1/2개" autocomplete="off">';
			html += '<button class="btn" onclick="MaterialDelete(this)" id="remove" style="margin-top: 7px;"><i class="bi bi-x-circle" style="size: 20px;"></i></button>'; 
			html += "</div>";
			
			$("#divMaterialArea_1").append(html);
						
			$("#MaterialName").val('');
			$("#MaterialAmount").val('');
		};

		function MaterialDelete(obj){
			var tr = $(obj).parent();

			tr.remove();
		}
			
			var i=2;			
		function StepCreate(){
			var html = '';
/* 			var Name = $("#MaterialName").val();
			var Amount = $("#MaterialAmount").val(); */
			var remove = $("remove").val(); 
			
			html += '<div class="col-12" style="max-width: 80%;">';
			html += '<div class="input-group" style="margin-bottom: 30px;">';
			html += '<h4 id="" style="margin-right: 30px;">Step' + "&nbsp" + i +'</h4>';
			html += '<textarea id="fdspStep" name="fdspStepArray" class="form-control" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:200px; resize:none;"></textarea>'; 
			html += '<div class="" id="step' + i + '">';
			html += '<label for="file' + i + '">';
			html += '<img class="step_image" id="" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">';
			html += '</label>';
			html += '<input class="step_image" type="file" name="file' + i + '" id="file' + i + '" accept="jpeg,png,gif" style="display:none;" onchange="setThumbnail_Food(event);" multiple="multiple">';
			html += '</div>';
			html += '<button class="btn" onclick="StepDelete(this)" id="remove"><i class="bi bi-x-circle" style="size: 20px;  margin-top: 15px;"></i></button> ';
			html += '</div>';
			html += '</div>';
			
			$("#StepCount").append(html);
/* 			$("#MaterialName").val('');
			$("#MaterialAmount").val(''); */
			i++; // 함수 내 하단에 증가문 설정	
		};
		function StepDelete(obj){
			var tr = $(obj).parent();

			tr.remove();
			i--;
		}
		
</script>

<script>
//textarea 바이트 수 체크하는 함수
function checkByte(obj){
    const maxByte = 100; //최대 100바이트
    const text_val = obj.value; //입력한 문자
    const text_len = text_val.length; //입력한 문자수
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //유니코드 형식으로 변환
        if(uni_char.length>4){
        	// 한글 : 2Byte
            totalByte += 2;
        }else{
        	// 영문,숫자,특수문자 : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	alert('최대 100Byte까지만 입력가능합니다.');
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
    }

</script>
<!-- 메인사진 업로드 -->
<script> 
function setThumbnail(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		
			var img = document.createElement("img"); 
			img.width = 250;
		    img.height = 250;
			img.setAttribute("src", event.target.result);
			$("#image_hide").hide();
			document.querySelector("div#image_container").appendChild(img); 
			
		}; 
			reader.readAsDataURL(event.target.files[0]); 
		} 
</script>
<!-- STEP 요리 사진 업로드 -->
<script> 
function setThumbnail_Food(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		
			var img = document.createElement("img"); 
			img.width = 160;
		    img.height = 160;
			img.setAttribute("src", event.target.result);
			$(".step_image").hide();
			document.querySelector("div#step1").appendChild(img); 
			document.querySelector("div#step2").appendChild(img); 
			document.querySelector("div#step3").appendChild(img); 
			document.querySelector("div#step4").appendChild(img); 
			document.querySelector("div#step5").appendChild(img); 
			document.querySelector("div#step6").appendChild(img); 
			document.querySelector("div#step7").appendChild(img); 
			document.querySelector("div#step8").appendChild(img); 
			document.querySelector("div#step9").appendChild(img); 
			document.querySelector("div#step10").appendChild(img); 
		}; 
			reader.readAsDataURL(event.target.files[0]); 
			
		} 
</script>

<!-- 여러개 사진 업로드 미리보기 -->
<script> 
function setThumbnail_multi(event) { 
	for (var image of event.target.files) { 
		var reader = new FileReader(); 
		reader.onload = function(event) { 
				var img = document.createElement("img");
				img.width = 160;
			    img.height = 160;
				img.setAttribute("src", event.target.result); 
				document.querySelector("div#step1").appendChild(img);
			}; 
				console.log(image); reader.readAsDataURL(image); 
			} 
	} 
</script>

<script>
	upload = function(seq,div){
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		/* if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;} */
		
		var totalFileSize;
		for(var i = 0; i < fileCount; i++){
			if(div==1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else {
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		/* if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;} */
		
		for(var i=0; i<fileCount; i++){
			addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
		}
	}
</script>

</form>
</body>

</htm1>





