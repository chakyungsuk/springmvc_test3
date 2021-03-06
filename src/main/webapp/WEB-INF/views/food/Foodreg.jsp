
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
 <a href=""><input type="button" id="" class="btn" style="color: white;" value="NEW Recipes(????????? ??????)"/></a>
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
      <!-- <a href="/food/Foodreg" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
        NEW Recipes
      </a> -->
    </li>
    <li>
      <!-- <a href="#" class="nav-link text-white">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
        MY Recipes
      </a> -->
    </li>
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
</div>
<!-- sidebar body E -->	


<div class="container">
	<div class="card mb-3">
		<div class="regi_center">
		<div class="row">
			<div class="regi_title" style="text-align:left;"><h4>????????? ??????</h4></div>
		</div>
		<div class="container" style="max-width: 80%; text-align: center;">
			<div class="row">
				<div class="cont_box pad_l_60">
						<div id="image_container" style="float: right;">
						<label for="file0">
							<img id="image_hide" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
							<input class="form-control" type="file" name="file0" id="file0" accept="jpeg,png,gif" style="display:none;" onchange="setThumbnail(event);"/>
						</label>							
						</div>
					<div class="cont_line"><p class="cont_tit4">????????? ??????</p><input type="text" name="fdrsName" id="fdrsName" value="" class="form-control" placeholder="???) ????????? ????????? ?????????" style="width:610px;" autocomplete="off"></div><br>
					<div class="cont_line pad_b_25"><p class="cont_tit4">????????????</p><textarea name="fdrsIntroduction" id="fdrsIntroduction" class="form-control step_cont" placeholder="??? ???????????? ??????????????? ???????????????. ???) ????????? ????????? ?????? ????????? ???????????? ???????????????. ?????????????????? ?????? ????????? ???????????? ????????? ????????? ?????? ??????????????????." style="height:100px; width:610px; resize:none;" autocomplete="off"></textarea></div>
				</div>
			</div>
		</div>
			<hr>
			<div class="cont_line" style="margin-bottom: 40px;"><h4 style="text-align: left;">????????????</h4>
			<span class="guide" style="text-align: center;">????????? ????????? ??????????????????, ??????????????? ?????? ???????????? ????????? ??? ?????????.</span><br><br>
				<i class="bi bi-person"></i> <select id="fdrsServingsCd" name="fdrsServingsCd" text="??????" style="margin-right: 50px;">
					<option value="">??????</option>
					<option value="1">1??????</option>
					<option value="2">2??????</option>
					<option value="3">3??????</option>
					<option value="4">4??????</option>
					<option value="5">4????????????</option>
				</select>
			    <span class="pad_l_30"><i class="bi bi-alarm"></i></span>
				<select id="fdrsTimeCd" name="fdrsTimeCd" text="????????????">
					<option value="">??????</option>
					<option value="5">5?????????</option>
					<option value="10">10?????????</option>
					<option value="15">15?????????</option>
					<option value="20">20?????????</option>
					<option value="25">25?????????</option>
				</select>
				<span class="pad_l_30" style="margin-left: 50px;"><i class="bi bi-hand-thumbs-up"></i> </span>
				<select id="fdrsDifficultyCd" name="fdrsDifficultyCd" text="?????????">
					<option value="">?????????</option>
					<option value="1">?????????</option>
					<option value="2">??????</option>
					<option value="3">??????</option>
					<option value="4">??????</option>
					<option value="5">????????????</option>
				</select>
			</div>
		</div>
	</div><!--/cont_box-->
	
<div class="card mb-3">
	 <h4>??????</h4><b style="text-align: center;">????????? ????????? ???????????? ????????? ????????? ??????????????? ???????????????.</b>
		 <p class="cont_tit6 st2 mag_r_15"><a href="#" class="btn-lineup ui-sortable-handle" id="divMaterialArea"></a></p>
	 	<div class="container" style="max-width: 60%; text-align: center;" >
			 <div id="divMaterialArea_1" class="ui-sortable" style="text-align: center; margin-left: 43px;">
				 <div id="" style="margin-bottom: 10px;">
					 <input type="text" name="fdmtMaterial" id="fdmtMaterial" class="form-control" style="width:330px; float: left; margin-right: 10px;" placeholder="???) ????????????" autocomplete="off">
					 <input type="text" name="fdmtAmount" id="fdmtAmount" class="form-control" style="width:310px; margin: 0;" placeholder="???) 300g" autocomplete="off">
				 </div>
			 </div>
			 <br>
			 <div>
				 <button class="btn btn-lg-danger" type="button" onclick="MaterialCreate()" id="" name="">??????</button>
			 </div>
		 	<div class="btn_add" style="padding:0 0 20px 350px; width:800px;"></div>
		 </div>
</div>


<div class="card mb-3">
      <h4>????????????</h4>
<!--       <div class="" style="text-align: left;">
	      <input type="file" name="" id="multifile" style="display:none;" multiple="multiple">
	      <button type="button" onclick="document.getElementById('multifile').click();" class="btn-sm btn btn-info">
			<i class="bi bi-patch-plus-fill"></i> ???????????? ????????? ??????
	      </button>
      </div> -->
      <br>
	  <span class="guide mag_b_15"><b>????????? ?????? ????????? ??? ?????? ????????? ????????? ???????????? ???????????????.</b><br>
		???) 10?????? ??????????????? ??? 10?????? ???????????? ???????????????.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???????????? ??????????????? ??? ???????????? ????????? ??????????????? ?????? ?????? ???????????????.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;?????? ?????? ??????????????? ??? ?????? ?????? ??????, ?????? 1???????????? ?????? ???????????????.
	  </span><br>
	  <h5 style="text-align: center; color: orange;">//??????// ??????????????? Step??? ???????????? ?????? ?????? ??????????????????.</h5>
	  <br>
      <div id="divStepArea" class="ui-sortable">
      <div class="container" style="max-width: 80%; text-align: center;">
          <div class="row" id="StepCount" style="justify-content: center;">
          
			<div class="col-12" style="max-width: 80%;">
				<div class="input-group" style="margin-bottom: 30px;">
          			<h4 id="" style="margin-right: 30px;">Step 1</h4>
					<textarea id="fdspStep" name="fdspStep" class="form-control" placeholder="???) ???????????? ???????????? ???????????? ????????? ????????? ???????????????." style="height:160px; width:200px; resize:none; float: left;"></textarea>
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
				 <button class="btn btn-lg-danger" type="button" onclick="StepCreate();" id="" name="">Step ??????</button>
			 </div>
          
          </div>
	</div>
</div>

<div class="card mb-3" style="text-align: center;">
    <h4>?????????</h4><br>
    <textarea name="fdrsTip" id="fdrsTip" onkeyup="checkByte(this)" class="form-control step_cont" placeholder="???) ?????????????????? ???????????? ????????? ?????? ????????? ????????? ????????? ?????? ????????? ???????????????." style="height:120px; max-width:90%; resize:none; margin: auto; margin-bottom: 30px;"></textarea>
    <sup>(<span id="nowByte">0</span>/100bytes)</sup>
	<div class="regi_btm" style="padding-top: 35px; padding-bottom: 40px;">
		<button type="submit" id="btnSubmit" name="btnSubmit" class="btn-lg btn-primary">??????</button>
	    <button type="button" class="btn-lg btn-default">??????</button>
     </div>
</div>

</div>
<footer class="text" style="margin-top: 20px;">
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
	
	
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

<script type="text/javascript">
		
		$("#btnSubmit").on("click", function(){
			var answer = confirm("?????? ???????????????????")
			
			if(answer){
				$("#btnSubmit").attr("action", "/member/memberInst");
				$("#btnSubmit").submit(); 
			} else {
				return false;
			}
		
		});
		
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
		
		function MaterialCreate(){
			var html = '';
		 	var remove = $("remove").val(); 
						
/* 			var Name = $("#MaterialName").val();
			var Amount = $("#MaterialAmount").val(); */
			
						
			html += '<div id="" style="margin-bottom: 10px;">';
			html += '<input type="text" name="fdmtMaterialArray" id="fdmtMaterialArray" class="form-control" style="width:330px; float: left; margin-right: 10px; margin-bottom: 8px;" placeholder="???) ?????????" autocomplete="off">';
			html += '<input type="text" name="fdmtAmountArray" id="fdmtAmountArray" class="form-control" style="width:310px; float:left; margin-bottom: 8px;"; placeholder="???) 1/2???" autocomplete="off">';
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
			
			if(i <= 5){
			var html = '';
/* 			var Name = $("#MaterialName").val();
			var Amount = $("#MaterialAmount").val(); */
			var remove = $("remove").val(); 
			
			html += '<div class="col-12" style="max-width: 80%;">';
			html += '<div class="input-group" style="margin-bottom: 30px;">';
			html += '<h4 id="" style="margin-right: 30px;">Step' + "&nbsp" + i +'</h4>';
			html += '<textarea id="fdspStep" name="fdspStepArray" class="form-control" placeholder="???) ???????????? ???????????? ???????????? ????????? ????????? ???????????????." style="height:160px; width:200px; resize:none;"></textarea>'; 
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
			i++; // ?????? ??? ????????? ????????? ??????	
			} else {
				alert("Step ??? 5???????????? ???????????????");
			}
		};
		function StepDelete(obj){
			var tr = $(obj).parent();

			tr.remove();
			i--;
		}
		
</script>

<script>
//textarea ????????? ??? ???????????? ??????
function checkByte(obj){
    const maxByte = 100; //?????? 100?????????
    const text_val = obj.value; //????????? ??????
    const text_len = text_val.length; //????????? ?????????
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //???????????? ???????????? ??????
        if(uni_char.length>4){
        	// ?????? : 2Byte
            totalByte += 2;
        }else{
        	// ??????,??????,???????????? : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	alert('?????? 100Byte????????? ?????????????????????.');
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
    }

</script>
<!-- ???????????? ????????? -->
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
<!-- STEP ?????? ?????? ????????? -->
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

		}; 
			reader.readAsDataURL(event.target.files[0]); 
			
		} 
</script>

<!-- ????????? ?????? ????????? ???????????? -->
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





