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
	 	@media all and (min-width:359px) and (max-width:1024px)) {
      	.container {
          	width: auto;
        } 

	    @media (min-height: 1024px), screen and (orientation: portrait) { 
 		.container {
			margin-bottom: 400px;
   		}
</style>


<body>

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
			<input class="form-control" id="ifmmId" name="ifmmId" type="text" placeholder="영문(대소문자),숫자,특수문자(), 4~20자리 조합" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>비밀번호</h6>
			<input class="form-control" id="ifmmPassword" name="ifmmPassword" type="text" placeholder="영문(대소문자),숫자,특수문자(), 8~20자리 조합" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>비밀번호 확인</h6>
			<input class="form-control" type="text" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이름</h6>
			<input class="form-control" type="text" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>이름(영문)</h6>
			<input class="form-control" type="text" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>성별</h6>
			<select class="form-select" aria-label="Default select example">
				<option selected>::선택::</option>
				<option value="1">남자</option>
				<option value="2">여자</option>
				<option value="3">기타</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
			<h6>생일</h6>
			<input class="form-control" type="text" aria-label="default input example">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이메일</h6>
			<input class="form-control" id="fdmeEmailFull" name="fdmeEmailFull" type="text" placeholder="name@example.com" aria-label="default input example">
		</div>
		<div class="col-6 col-lg-6 col-sm-12">
			<h6>개인정보 보관(필수)</h6>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="ifmmSaved">
				<label class="form-check-label" for="flexCheckDefault"> 동의합니다. </label>
			</div>
		</div>
		<div class="col-2 col-lg-1 col-sm-2" style="margin-bottom: 12px; padding-right: 1px;">
			<h6>핸드폰</h6>
			<select class="form-select" aria-label="Default select example" style="padding-right: 1px;">
				<option selected>::선택::</option>
				<option value="1">SKT</option>
				<option value="2">KT</option>
				<option value="3">LGU</option>
			</select>
		</div>
		<div class="col-10 col-lg-5 col-sm-10" style="margin-bottom: 12px; padding-left: 0px;">
			<input class="form-control" type="text" placeholder="숫자만 입력해 주십시요." aria-label="default input example" style="padding-left: 0px; margin-top: 27px;">
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
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>거주국가</h6>
			<select class="form-select" aria-label="Default select example">
				<option selected>::선택::</option>
				<option value="1">한국</option>
				<option value="2">미국</option>
				<option value="3">일본</option>
			</select>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
		<div class="d-grid gap-2 col-12 col-lg-6 col-sm-12" >
			<h6>주소(한국전용)</h6>
			<div class="input-group mb-2">
				<input type="text" id="sample2_postcode" class="form-control"  aria-label="Recipient's username" aria-describedby="button-addon2" disabled>
				<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="sample2_execDaumPostcode()">
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
		<div class="col-12 col-lg-3 col-sm-12">
			<input class="form-control" id="sample2_address" type="text">
		</div>
		<div class="col-12 col-lg-3 col-sm-12">
			<input class="form-control" id="sample2_extraAddress" type="text">
		</div>		
		<div class="d-grid gap-2 col-6 col-lg-6 col-sm-12">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		<input class="form-control" id="sample2_detailAddress" type="text">
		</div>
		<div class="row">
		<div class="col-12 col-lg-6 col-sm-12">
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
			<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" style="margin-bottom: 12px;"></textarea>
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
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
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.js"></script>

<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>


<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		// ID	
		if(!checkNull($("#ifmmId"),$("#ifmmId").val(), "아이디를 입력 바랍니다.")) return false;
		if(!checkId($("#ifmmId"),$("#ifmmId").val(), "최소 2자 부터 20자 까지 가능합니다.")) return false;
		
		// PassWord
		if(!checkNull($("#ifmmPassword"),$("#ifmmPassword").val(), "비밀번호를 입력 바랍니다.")) return false;
		if(!checkPassword($("#ifmmPassword"),$("#ifmmPassword").val(), "영어 대소문자 및 특수문자 포함해서 입력 바랍니다.")) return false;
		
		// E-mail
		if(!checkNull($("#fdmeEmailFull"),$("#fdmeEmailFull").val(),"이메일을 입력 바랍니다.")) return false;
		if(!checkEmail($("#fdmeEmailFull"),$("#fdmeEmailFull").val(),"이메일 형식이 틀립니다.")) return false; 
	
		// 개인정보유효기간(필수)
	 	/* if(!checkBox($("#ifmmSaved"),$("#ifmmSaved").val(),"개인정보 유효기간은 필수 체크사항 입니다.")) return false;  */
	    if($("#ifmmSaved").is(":checked")){
	    	return true;
	    } else {
          alert("개인정보 유효기간 체크는 필수 입니다.");
          $("#ifmmSaved").focus();
			return false;
        }
	}); 

    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

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
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>



</body>
</htm1>





