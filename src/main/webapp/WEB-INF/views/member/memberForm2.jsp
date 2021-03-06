<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


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
   		.addScroll {
   			overflow:auto;
   			height: 90px;
   			background-color: white;
   		}
</style>

<body>

<form id="formUpdt" name="formUpdt" method="post" action="/member/memberUpdt">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">

<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>">
<%-- <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
<input type="hidden" name="ifmmId" value="<c:out value="${vo.ifmmId }"/>">
<input type="hidden" name="ifmmPassword" value="<c:out value="${vo.ifmmPassword }"/>">
<input type="hidden" name="fdmeEmailFull" value="<c:out value="${vo.fdmeEmailFull }"/>">
<input type="hidden" name="fdmpNumber" value="<c:out value="${vo.fdmpNumber }"/>"> --%>

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
			<h3 style="margin-bottom: 0px;">회원정보수정</h3>
		</div>
	</div>
<br><br>

<div class="container-sm">
	<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>아이디</h6>
			<input class="form-control" id="ifmmId" name="ifmmId" type="text" value="<c:out value="${item.ifmmId}"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>비밀번호</h6>
			<input class="form-control" id="ifmmPassword" name="ifmmPassword" type="password" placeholder="영문(대소문자),숫자,특수문자(), 8~20자리 조합" value="<c:out value="${item.ifmmPassword }"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<!-- <h6>비밀번호 확인</h6>
			<input class="form-control" id="ifmmPassword2" name="ifmmPassword" type="password" placeholder="" autocomplete="off"> -->
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이름</h6>
			<input class="form-control" id="ifmmName" name="ifmmName" type="text" value="<c:out value="${item.ifmmName}"/>">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>성별</h6>
			<select class="form-select" id="ifmmGenderCd" name="ifmmGenderCd" id="ifmmGenderCd">
				<option selected value="">::선택::</option>
				<option value="1" <c:if test="${item.ifmmGenderCd eq 1 }">selected</c:if>>남자</option>
				<option value="2" <c:if test="${item.ifmmGenderCd eq 2 }">selected</c:if>>여자</option>
				<option value="3" <c:if test="${item.ifmmGenderCd eq 3 }">selected</c:if>>기타</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>생일</h6>
			<input class="form-control" type="text" aria-label="default input example" id=shDate name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이메일</h6>
			<input class="form-control" name="fdmeEmailFull" type="text" value="<c:out value="${item.fdmeEmailFull}"/>" placeholder="name@example.com" >
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>개인정보 보관(필수)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="ifmmSaved" value="<c:out value="${item.ifmmSaved}"/>" <c:if test="${item.ifmmSaved eq 1 }">checked</c:if>>
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>핸드폰</h6>
			<select class="form-select" id="fdmpTelecomCd" name="fdmpTelecomCd" style="padding-right: 1px;">
				<option selected value="">::선택::</option>
				<option value="1" <c:if test="${item.fdmpTelecomCd eq 1}">selected</c:if>>SKT</option>
				<option value="2" <c:if test="${item.fdmpTelecomCd eq 2}">selected</c:if>>KT</option>
				<option value="3" <c:if test="${item.fdmpTelecomCd eq 3}">selected</c:if>>LGU</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." name="fdmpNumber" value="<c:out value="${item.fdmpNumber }"/>" style="padding-left: 0px; margin-top: 27px;">
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
			<select class="form-select" aria-label="Default select example" style="padding-right: 0px; ">
				<option selected>::선택::</option>
				<option value="1">02</option>
				<option value="2">031</option>
				<option value="3">042</option>
				<option value="4">062</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." aria-label="default input example" style="padding-left: 0px; margin-top: 27px;">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>핸드폰 정보 마케팅 사용 동의(선택)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<!-- <div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<label for="file0" class="form-label btn btn-info btn-sm">이미지첨부</label>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<label for="file1" class="form-label btn btn-info btn-sm">파일첨부</label>
		</div> -->
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" >
			<h6>주소(한국전용)</h6>
			<div class="input-group mb-2">
				<input type="text" id="fdmaZipcode" class="form-control" name="fdmaZipcode" aria-describedby="button-addon2" value="<c:out value="${item.fdmaZipcode}"/>">
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
			<input class="form-control" id="fdmaTitle1" name="fdmaTitle1" type="text" value="<c:out value="${item.fdmaTitle1}"/>">
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-left: 2px;">
			<input class="form-control" id="fdmaTitle2" name="fdmaTitle2" type="text" value="<c:out value="${item.fdmaTitle2}"/>">
		</div>		
		<div class="d-grid gap-2 col-6 col-lg-6 col-sm-12">
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="fdmaAddress" name="fdmaAddress" type="text" placeholder="상세주소를 입력해주세요." value="<c:out value="${item.fdmaAddress}"/>">
		</div>
		<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="fdmaLatArray0" name="fdmaLat" value="<c:out value="${item.fdmaLat }"/>" type="text" placeholder="위도" readonly="readonly" style="width: 200px; float: left; margin-right: 20px;">
		<input class="form-control" id="fdmaLatArray0" name="fdmaLng"  value="<c:out value="${item.fdmaLng }"/>" type="text" placeholder="경도" readonly="readonly" style="width: 200px;">
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
			<textarea class="form-control" id="ifmmDesc" name="ifmmDesc" style="margin-bottom: 12px;">
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
			<!-- <button type="button" class="btn btn-danger btn-sm me-md-2 " data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float: left;"  >
				<i class="fa-solid fa-trash-can"></i>
			</button> -->
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">
			<button type="button" id="btnback" name="btnback" class="btn btn-outline-primary" style="width: 200px;">뒤로가기</button>
			<button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-outline-danger" style="width: 200px;">수정</button>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6">
			<!-- <button class="btn btn-success btn-sm" type="button" style="float: right;">
				<i class="fa-solid fa-file-excel"></i>	
			</button> -->
		</div>
	</div>
</div>

<br><br>
</form>

<!-- Modal -->

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">정말 삭제 하시겠습니까?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        삭제하시게 되시면 모든 데이터가 삭제 됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger"><a href="./memberList.html">삭제</a></button><br>
      </div>
    </div>
  </div>
</div>


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

	$("#btnback").on("click", function(){
		var back = confirm ("뒤로 가시겠습니까?")	
		if(back) {
			$("#formUpdt").attr("action","/member/memberView");
			$("#formUpdt").submit();	
		} else {
			return false;
		}
	});
	
	
	$("#btnSubmit").on("click", function(){
		var correction = confirm ("수정하시겠습니까?")	
		if(correction) {
			$("#ifmmSeq").val(seq)	
			$("#formUpdt").attr("action","/member/memberUpdt");
			$("#formUpdt").submit();
		} else {
			return false;
		}
	});
	

	
 	$("#btnSubmit").on("click", function(){
	
 		if(!checkNull($("#fdmpTelecomCd"),$("#fdmpTelecomCd").val(), "통신사를 선택해 주세요")) return false
		if(!checkNull($("#ifmmGenderCd"),$("#ifmmGenderCd").val(), "성별을 넣어주세요")) return false
		if(!checkNull($("#shDate"),$("#shDate").val(), "생일을 입력해 주세요")) return false
	  
		if($("#ifmmSaved").is(":checked")){
	    	return true;
	    } else {
          alert("개인정보 유효기간 체크는 필수 입니다.");
          $("#ifmmSaved").focus();
			return false;
	    }
	});   

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("fdmaTitle2").value = extraAddr;
                
                } else {
                    document.getElementById("fdmaTitle2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('fdmaZipcode').value = data.zonecode;
                document.getElementById("fdmaTitle1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("fdmaAddress").focus();
            }
        }).open();
    }
    
	$(document).ready(function(){
		 $("#shDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
</script>
<script type="text/javascript">
upload = function(seq, div){
	$("#ulFile"+ seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount,seq) == false) {return false;}
	
	var totalFileSize;
	
	for (var i = 0; i < fileCount ; i++) {
		if(div == 1){
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else if(div == 2) {
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		} else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	
	if(checkUploadedTotalFileSize(totalFileSize, seq) === false){return false;}
	
	for(var i = 0; i< fileCount ; i++){
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}
	
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+seq+','+index+')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			$("#ulFile"+seq).append(li);
		}
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	};
	
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





