<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%pageContext.setAttribute("br", "<br/>");%> 


<!DOCTYPE HTML>
<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">

<!-- bootstrap Css -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap extra Css -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sticky-footer/sticky-footer.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/offcanvas-navbar/offcanvas.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/navbars/navbar.css" rel="stylesheet">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
<!-- user css -->
<script src="https://kit.fontawesome.com/ac511b8e02.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">


<link rel="shortcut icon" href="https://ifh.cc/g/43bP0g.png" type="image/x-icon" />
<title id="ctl00_headerTitle">Ten Thousand Recipes</title>
</head>

<style type="text/css">

/* 	@media ( max-width:767px ) { */
		body {
			padding-top: 0px;
			padding-bottom: 0px;
			margin-bottom: 12px;
		}
		.row {
			margin-bottom: 12px;
		}
      	.container {
          	width: auto;
       		margin-bottom: 400px;
        } 
   		textarea {
		    min-height: 5rem;
		    overflow-y: hidden;
		    resize: none;
		}
   		.addScroll {
   			overflow:auto;
   			height: 90px;
   			background-color: white;
   		}
</style>

<body>
<form id="formView" name="formView" method="post" action="/member/memberList">	
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">

<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
<input type="hidden" name="ifmmId" value="<c:out value="${vo.ifmmId }"/>">
<input type="hidden" name="ifmmPassword" value="<c:out value="${vo.ifmmPassword }"/>">
<input type="hidden" name="fdmeEmailFull" value="<c:out value="${vo.fdmeEmailFull }"/>">
<input type="hidden" name="fdmpNumber" value="<c:out value="${vo.fdmpNumber }"/>">
<input type="hidden" name="fdmpTelecomCd" value="<c:out value="${vo.fdmpTelecomCd }"/>">
<input type="hidden" name="ifmmGenderCd" value="<c:out value="${vo.ifmmGenderCd }"/>">


<div class="container-sm">
	<div class="row">
		<div class="col-12 col-sm-12 col-lg-2">
			<img src="/resources/xdmin/image/manager_image/logo1.png" width="200px">
 		</div>
		<div class="col-12 col-sm-12 col-lg-4" style="text-align: center; margin-top:15px;"> 
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-1 d-none d-md-block">	
			<div class="row">
				<div class="col" style=" margin-top: 40px; "><p class="name" style="font-size: 16px; font-weight:bold;display: inline;">${sessName} <span>님</span></p> </div>
			</div>
		</div>
		<div class="col-1 d-none d-md-block float-end">	
			<div class="row">
				<span class="badge bg-primary" role="button" id="btn-Logout" style="width: 100px; height:30px; margin-top: 38px;"><p style="font-size: 13px; margin-top: 5px; ">로그아웃 <i class="fa-solid fa-right-from-bracket"></i></p></span>
			</div>
		</div>
	</div>
		<div class="col-12">
		<ul class="nav nav-tabs" style="margin-top: 20px">
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/member/memberList">처음화면으로</a>
		    </li>
		</ul>
		</div>
		<div style="margin-left: 11px; margin-top: 20px;">
			<h3 style="margin-bottom: 0px;">회원정보조회</h3>
		</div>
	</div>
<br><br>

<div class="container-sm">
	<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>아이디</h6>
			<input class="form-control" id="ifmmId" name="ifmmId" type="text" value="<c:out value="${item.ifmmId}"/>" disabled="disabled">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>비밀번호</h6>
			<input class="form-control" id="ifmmPassword" name="ifmmPassword" type="password" value="<c:out value="${item.ifmmPassword}"/>" disabled="disabled">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>비밀번호 확인</h6>
			<input class="form-control" id="ifmmPassword2" name="ifmmPassword" type="password" value="<c:out value="${item.ifmmPassword}"/>" disabled="disabled" >
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이름</h6>
			<input class="form-control" id="ifmmName" name="ifmmName" type="text" value="<c:out value="${item.ifmmName}"/>" disabled="disabled">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>성별</h6>
			<select class="form-select" aria-label="Default select example" disabled="disabled" id="ifmmGenderCd" name="ifmmGenderCd">
				<option selected value="">::선택::</option>
				<option value="1" <c:if test="${item.ifmmGenderCd eq 1 }">selected</c:if>>남자</option>
				<option value="2" <c:if test="${item.ifmmGenderCd eq 2 }">selected</c:if>>여자</option>
				<option value="3" <c:if test="${item.ifmmGenderCd eq 3 }">selected</c:if>>기타</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>생일</h6>
			<input class="form-control" type="text" name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>" autocomplete="off" disabled="disabled">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이메일</h6>
			<input class="form-control" id="fdmeEmailFull" name="fdmeEmailFull" type="text" value="<c:out value="${item.fdmeEmailFull}"/>" placeholder="name@example.com" disabled="disabled" >
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>개인정보 보관(필수)</h6>
			<div class="form-check"> 
				<input class="form-check-input" type="checkbox" value="" id="ifmmSaved" checked>
				<label class="form-check-label" for="flexCheckDefault" > 동의합니다. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>핸드폰</h6>
			<select class="form-select" id="fdmpTelecomCd" name="fdmpTelecomCd" style="padding-right: 1px;" disabled="disabled">
				<option selected value="">::선택::</option>
				<option value="1" <c:if test="${item.fdmpTelecomCd eq 1}">selected</c:if>>SKT</option>
				<option value="2" <c:if test="${item.fdmpTelecomCd eq 2}">selected</c:if>>KT</option>
				<option value="3" <c:if test="${item.fdmpTelecomCd eq 3}">selected</c:if>>LGU</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." name="fdmpNumber" value="<c:out value="${item.fdmpNumber }"/>" style="padding-left: 0px; margin-top: 27px;" disabled="disabled">
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>이메일 정보 마케팅 사용 동의(선택)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>전화번호</h6>
			<select class="form-select" aria-label="Default select example" style="padding-right: 0px;" disabled="disabled">
				<option selected>::선택::</option>
				<option value="1">02</option>
				<option value="2">031</option>
				<option value="3">042</option>
				<option value="4">062</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." aria-label="default input example" style="padding-left: 0px; margin-top: 27px;" disabled="disabled">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>핸드폰 정보 마케팅 사용 동의(선택)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<!-- <label for="file0" class="form-label btn btn-info btn-sm">이미지첨부</label> -->
	<%-- <c:forEach items="${listUploaded}" var="listUploaded" varStatus="status">
		<c:if test="${listUploaded.type eq 0}">
			<div class="" style="">
				<img class="" id="" style="height: 200px; float: left;" src="<c:out value="${listUploaded.path}"/><c:out value="${listUploaded.uuidName }"/>">
			</div>
		</c:if>
	</c:forEach> --%>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<!-- <label for="file1" class="form-label btn btn-info btn-sm">파일첨부</label> -->
	<c:forEach items="${listUploaded}" var="listUploaded" varStatus="status">
		<c:if test="${listUploaded.type eq 1}">
			<input class="form-control" id="file1" name="file1" type="" multiple="multiple" style="display: none;" onchange="upload(1, 2);" readonly="readonly">
		</c:if>
	</c:forEach>
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" >
			<h6>주소(한국전용)</h6>
			<div class="input-group mb-2">
				<input type="text" id="sample6_postcode" name="fdmaZipcode" class="form-control"  aria-describedby="button-addon2" readonly="readonly" value="<c:out value="${item.fdmaZipcode}"/>">
				<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="sample6_execDaumPostcode()">
					<i class="fa-solid fa-magnifying-glass-plus"></i>
				</button>
			</div>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-right: 2px;">
			<input class="form-control" id="sample6_address" name="fdmaTitle1" type="text" readonly="readonly" value="<c:out value="${item.fdmaTitle1}"/>">
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-left: 2px;">
			<input class="form-control" id="sample6_extraAddress" name="fdmaTitle2" type="text" readonly="readonly" value="<c:out value="${item.fdmaTitle2}"/>">
		</div>		
		<div class="d-grid gap-2 col-6 col-lg-6 col-sm-12">
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="sample6_detailAddress" name="fdmaAddress" type="text" placeholder="상세주소를 입력해주세요." readonly="readonly" value="<c:out value="${item.fdmaAddress}"/>">
		</div>
		<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="" name="" value="<c:out value="${item.fdmaLat }"/>" type="text" placeholder="위도" readonly="readonly" style="width: 200px; float: left; margin-right: 20px;">
		<input class="form-control" id="" name=""  value="<c:out value="${item.fdmaLng }"/>" type="text" placeholder="경도" readonly="readonly" style="width: 200px;">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		</div>

		<div class="col-12 col-lg-6 col-sm-12">
			<label for="exampleFormControlTextarea1" class="form-label">설명</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"  style="margin-bottom: 12px; resize: none;" disabled="disabled" onkeydown="resize(this)" onkeyup="resize(this)" >
			<c:out value="${fn:replace(item.ifmmDesc, br, '<br/>')}" escapeXml = "false"/></textarea>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<!-- <div class="col-6 col-lg-3 col-sm-6">
			<h6>최종수정자</h6>
			<input class="form-control" type="text" placeholder="CHa(CEO)" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>최종수정일</h6>
			<input class="form-control" type="text" placeholder="2021.01.01" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>최초등록자</h6>
			<input class="form-control" type="text" placeholder="CHa(CEO)" aria-label="default input example" disabled>
		</div>
		<div class="col-6 col-lg-3 col-sm-6">
			<h6>최초등록일</h6>
			<input class="form-control" type="text" placeholder="2021.01.01" aria-label="default input example" disabled>
		</div> -->
	</div>
</div>

<br>

<div class="container-sm">
	<div class="row">
		<div class="col-lg-4 col-md-6 col-sm-6" >
			<a href ="javascript:memberDele(<c:out value="${item.ifmmSeq}"/>)" class="btn btn-danger btn-sm me-md-2 " id="" name="" style="float: left;">
				<i class="fa-solid fa-trash-can"></i>
			</a>
			<%-- <a href ="javascript:memberNele(<c:out value='${item.ifmmSeq}'/>)" class="btn btn-primary btn-sm me-md-2 " type="button" id="" name="" style="float: left;">
				<i class="fa-solid fa-trash-can"></i>
			</a> --%>
		</div>
		
		
		<div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">
			<button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-outline-primary" style="width: 200px;">목록</button>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6">
			<button class="btn btn-success btn-sm" type="button" id="goform2" name="goform2" style="float: right;">수정
				<!-- <i class="fa-solid fa-file-excel"></i> -->	
			</button>
		</div>
	</div>
</div>

<br><br>
</form>



<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.js"></script>

<div id="layer" style="display:none; position:fixed; overflow:hidden; z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer; position:absolute; right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>


<script type="text/javascript">

	function resize(obj) {
	    obj.style.height = '1px';
	    obj.style.height = (12 + obj.scrollHeight) + 'px';
	}

// 가짜 삭제
/* 	memberNele = function(seq){
		var realDelNy = confirm ("삭제할거에요?")	
		if(realDelNy){
			$("#ifmmSeq").val(seq)
			$("#formView").attr("action","/member/memberNele")
			$("#formView").submit();
		} else {
			return false
		}
	}; */

// 진짜 삭제
 	memberDele = function(seq){
		var DelNy = confirm ("진짜 삭제 하시겠습니까?(DB삭제)")	
		if(DelNy){
			$("#ifmmSeq").val(seq)
			$("#formView").attr("action","/member/memberDele")
			$("#formView").submit();
		} else {
			return false
		}
	}; 
	
	$("#btnSubmit").on("click", function(){
		$("#formView").attr("action","/member/memberList")
		$("#formView").submit();
	}); 
	
	$("#goform2").on("click", function(){
		$("#formView").attr("action","/member/memberForm2")
		$("#formView").submit();
	}); 
	
	$("#btnDelete").on("click", function(){
		var answer = confirm ("삭제할거에요?")
		
		if(answer){
			return true
		} else {
			return false
		} 
	});

$("#btn-Logout").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/food/FoodLogin";
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
</htm1>





