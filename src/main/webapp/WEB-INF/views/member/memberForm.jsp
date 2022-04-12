<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>

<% pageContext.setAttribute("br", "\n"); %>


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


<title>Cha html projects</title>
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

<form id="formInst" name="formInst" method="post" action="/member/memberInst" enctype="multipart/form-data">


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
		<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 15px;">
			<img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" width="30px" style="float: left; margin-right: 10px;">
			<h6>Cha (CEO)</h6> <h6>Administrator</h6>
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
			<h3 style="margin-bottom: 0px;">Member Form</h3>
		</div>
	</div>
<br><br>

<div class="container-sm">
	<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>아이디</h6>
			<input class="form-control" id="ifmmId" name="ifmmId" type="text" placeholder="영문(대소문자),숫자 2자리 이상 조합" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>비밀번호</h6>
			<input class="form-control" id="ifmmPassword" name="ifmmPassword" type="text" placeholder="영문(대소문자),숫자,특수문자(), 8~20자리 조합" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>비밀번호 확인</h6>
			<input class="form-control" type="text">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이름</h6>
			<input class="form-control" type="text" id="ifmmName" name="ifmmName">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>성별</h6>
			<select class="form-select" id="ifmmGenderCd" name="ifmmGenderCd">
				<option selected value="">::선택::</option>
				<option value="1">남자</option>
				<option value="2">여자</option>
				<option value="3">기타</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>생일</h6>
			<input class="form-control" type="text" id="shDate" name="ifmmDob" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이메일</h6>
			<input class="form-control" id="fdmeEmailFull" name="fdmeEmailFull" type="text" placeholder="name@example.com" autocomplete="off">
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>개인정보 보관(필수)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="ifmmSaved" name="ifmmSaved" value="1">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>핸드폰</h6>
			<select class="form-select" name="fdmpTelecomCd" style="padding-right: 1px;">
				<option selected value="">::선택::</option>
				<option value="1">SKT</option>
				<option value="2">KT</option>
				<option value="3">LGU</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" name="fdmpNumber" placeholder="숫자만 입력해 주십시요." style="padding-left: 0px; margin-top: 27px;">
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
			<select class="form-select" style="padding-right: 0px; ">
				<option selected>::선택::</option>
				<option value="1">02</option>
				<option value="2">031</option>
				<option value="3">042</option>
				<option value="4">062</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." style="padding-left: 0px; margin-top: 27px;">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>핸드폰 정보 마케팅 사용 동의(선택)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<label for="file0" class="form-label btn btn-info btn-sm">이미지첨부</label>
			<input class="form-control" id="file0" name="file0" type="file" multiple="multiple" style="display: none;" onchange="upload(0, 2);">
			<div class="addScroll">
				<ul id="ulFile0" class="list-group">
				</ul>
			</div>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<label for="file1" class="form-label btn btn-info btn-sm">파일첨부</label>
			<input class="form-control" id="file1" name="file1" type="file" multiple="multiple" style="display: none;" onchange="upload(1, 2);">
			<div class="addScroll">
				<ul id="ulFile1" class="list-group">
				</ul>
			</div>
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" >
			<h6>주소(한국전용)</h6>
			<div class="input-group mb-2">
				<input type="text" id="fdmaZipcode" name="fdmaZipcode" class="form-control" aria-describedby="button-addon2" >
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
			<input class="form-control" id="fdmaTitle1" name="fdmaTitle1" type="text" >
		</div>
		<div class="col-12 col-lg-3 col-sm-12" style="padding-left: 2px;">
			<input class="form-control" id="fdmaTitle2" name="fdmaTitle2" type="text">
		</div>		
		<div class="d-grid gap-2 col-6 col-lg-6 col-sm-12">
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" style="margin-top: 10px;">
		<input class="form-control" id="fdmaAddress" name="fdmaAddress" type="text" placeholder="상세주소를 입력해주세요.">
		</div>
		<div class="row">
		<div class="col-12 col-lg-6 col-sm-12" style="text-align: center; justify-content:center; margin-top: 10px;">
		<input class="form-control" id="fdmaLatArray0" name="fdmaLat" type="text" placeholder="위도" style="width: 200px; float: left; margin-right: 20px;">
		<input class="form-control" id="fdmaLngArray0" name="fdmaLng" type="text" placeholder="경도" style="width: 200px;">
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
			<textarea class="form-control" id="ifmmDesc" name="ifmmDesc" rows="3" style="margin-bottom: 12px;"></textarea>
		</div>
        <div class="col-sm-6 mt-3 mt-sm-0">
        </div>
		<div class="col-6 col-lg-3 col-sm-6">
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
		</div>
	</div>
</div>

<br>

<div class="container-sm">
	<div class="row">
		<div class="col-lg-4 col-md-6 col-sm-6" >
			<button type="button" class="btn btn-danger btn-sm me-md-2 " data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float: left;"  >
				<i class="fa-solid fa-trash-can"></i>
			</button>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">
			<button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-outline-primary" style="width: 200px;">등록</button>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6">
			<button class="btn btn-success btn-sm" type="button" style="float: right;">
				<i class="fa-solid fa-file-excel"></i>	
			</button>
		</div>
	</div>
</div>
</form>
<br><br>


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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d80e2a3ed34412759bd6b1eea6603bb&libraries=services"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.js"></script>

<script src="/resources/common/js/commonXdmin.js"></script>




<div id="layer" style="display:none; position:fixed; overflow:hidden; z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer; position:absolute; right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>


<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		
		$("#btnSubmit").attr("action", "/member/memberInst");
		$("#btnSubmit").submit(); 

		// ID	
		if(!checkNull($("#ifmmId"),$("#ifmmId").val(), "아이디를 입력 바랍니다.")) return false;
		
		// PassWord
		if(!checkNull($("#ifmmPassword"),$("#ifmmPassword").val(), "비밀번호를 입력 바랍니다.")) return false;
		/* if(!checkPassword($("#ifmmPassword"),$("#ifmmPassword").val(), "영어 대소문자 및 특수문자 포함해서 입력 바랍니다.")) return false; */
		
		// E-mail
		if(!checkNull($("#fdmeEmailFull"),$("#fdmeEmailFull").val(),"이메일을 입력 바랍니다.")) return false;
	
		// 개인정보유효기간(필수)
	 	/* if(!checkBox($("#ifmmSaved"),$("#ifmmSaved").val(),"개인정보 유효기간은 필수 체크사항 입니다.")) return false;  */
	    if($("#ifmmSaved").is(":checked")){
	    	return true;
	    } else {
          alert("개인정보 유효기간 체크는 필수 입니다.");
          $("#ifmmSaved").focus();
			return false;
        } 
 		if(!checkNull($("#fdmpTelecomCd"),$("#fdmpTelecomCd").val(), "통신사를 선택해 주세요")) return false
		if(!checkNull($("#ifmmGenderCd"),$("#ifmmGenderCd").val(), "성별을 넣어주세요")) return false
		if(!checkNull($("#shDate"),$("#shDate").val(), "생일을 입력해 주세요")) return false
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
                
            	/* lat and lng from address s */
    			
        		// 주소-좌표 변환 객체를 생성
        		var geocoder = new daum.maps.services.Geocoder();
        		
        		// 주소로 좌표를 검색
        		geocoder.addressSearch(addr, function(result, status) {
        		 
        			// 정상적으로 검색이 완료됐으면,
        			if (status == daum.maps.services.Status.OK) {
        				
        				document.getElementById("fdmaLatArray0").value=result[0].x;
        				document.getElementById("fdmaLngArray0").value=result[0].y;
        				
        /* 						
        				var coords = new daum.maps.LatLng(result[0].y, result[0].x);
        		
        				y = result[0].x;
        				x = result[0].y;
        		
        				// 결과값으로 받은 위치를 마커로 표시합니다.
        				var marker = new daum.maps.Marker({
        					map: map,
        					position: coords
        				});
        		
        				// 인포윈도우로 장소에 대한 설명표시
        				var infowindow = new daum.maps.InfoWindow({
        					content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
        				});
        		
        				infowindow.open(map,marker);
        		
        				// 지도 중심을 이동
        				map.setCenter(coords);
        				
        				document.getElementById("ifmaLatArray0").value=x;
        				document.getElementById("ifmaLngArray0").value=y;
        */						
        			}
        		});
        		/* lat and lng from address e */
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
</script>   
		

</body>
</htm1>





