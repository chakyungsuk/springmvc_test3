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

 <!-- Bootstrap core Js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.sidebars.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>


<title>Cha html projects</title>

<style>
      body {
        height: 100vh;
        background-image: url('/resources/xdmin/image/user_image/fd6-1.jpg');
        background-repeat : no-repeat; 
        background-size : cover;
      }
      .container {
     	margin-right: 800px;  
     	margin-top: 30px;
      } 
      .container1 {
     	margin-right: 800px;  
      } 
      .input {
  		text-align:center;
  		justify-content:center;
  		margin-bottom: 20px;
      }
      .btn{
      	color: white;
      	text-align: center;
      }
      input::placeholder {
 		 color: white;
 		 font-style: italic;
	  }
      @media all and (min-width:360px) and (max-width:1024px) {
       .container {
       	margin-right: 400px;
     	 }
       .container1{
       	margin-right: 400px;
       }
       
      }
      @media (min-height: 1024px), screen and (orientation: portrait) { 
    	.container {
       margin: auto;
      	}
      	.container1{
       margin: auto; 
       }
      } 
/*       @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }  
      } */
</style>

</head>

<body class="text-center">

<!-- sidebar S -->
<nav class="navbar navbar-dark" aria-label="First navbar example">

<!-- sidebar head S -->
<div class="container" style="justify-content: center;">
	<a class="navbar-brand" href="#"><h3>Ten Thousand Recipes</h3></a>
	<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
		<span class="navbar-toggler-icon"></span>
	</button>
</div>
<!-- sidebar head E -->

<!-- sidebar body S -->	
	<div class="offcanvas offcanvas-end flex-shrink-0 p-3 text-white bg-dark " tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
	  <div class="offcanvas-header" style="padding-bottom: 0px;">
	    <h5 id="offcanvasRightLabel">Recipes MENU</h5>
	    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	  </div>
	  <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="#" class="nav-link active" aria-current="page">
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
<!-- sidebar body E -->	
</nav>
<!-- sidebar E -->

<form id="form" method="get" action="/member/memberInst">
	
	<div class="container1" style="margin-top: 100px;" >
		<div class="col-12">
			<div class="input">
				<input type="text" id="ifmmId" name="ifmmId" placeholder="ID" size="40" style="background: transparent; color: white;">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" size="40" style="background: transparent; color: white;">
			</div>
		</div>
		<div class="col-12">
			<div class="input">
				<input type="text" id="fdmeEmailFull" name="fdmeEmailFull" placeholder="E-mail" size="40" style="background: transparent; color: white;">
			</div>
		</div>
		<div class="col-12">
			<div class="input">
				<input type="text" id="fdmpNumber" name="fdmpNumber" placeholder="Mobile" name="fdmeEmailFull" size="40" style="background: transparent; color: white;">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
		<div class="row">
			<div class="col-12">
				<div class="form-check" style="margin-top: 7px;" >
					<label class="form-check-label" for="flexCheckDefault" style="color: gray; font-size: small;">
					<input class="form-check-input" type="checkbox" id="ifmmSaved" name="ifmmSaved" value="" checked>
					개인정보 유효기간2년 (필수)</label>
				</div>
			</div>
			<div class="col-12">
				<div class="form-check" style="margin-top: 7px;">
					<label class="form-check-label" for="flexCheckDefault" style="color: gray; font-size: small;">
					<input class="form-check-input" type="checkbox" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="" >
					이메일 정보 마케팅 사용 동의(선택)</label>
				</div>
			</div>
			<div class="col-12">
				<div class="form-check" style="margin-top: 7px;">
					<label class="form-check-label" for="flexCheckDefault" style="color: gray; font-size: small;">
					<input class="form-check-input" type="checkbox" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="" >
					모바일 정보 마케팅 사용 동의(선택)</label>
				</div>
			</div>
		</div>
	
		<div class="col-12" style="margin-top: 100px;">
			<div>
				<input type="button" class="btn" style="color: red;" value="RESET" data-bs-toggle="modal" data-bs-target="#staticBackdrop" />	
				
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
				<input type="hidden" name="shmemberDelNy" value="<c:out value="${vo.shmemberDelNy}"/>">
				<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">;
				<input type="hidden" name="sshValue" value="<c:out value="${vo.shValue}"/>">;
				<input type="hidden" name="" value="">
						
				<input type="submit" class="btn" style="color: blue;" value="Submit" id="btnSubmit"/>			
			</div>
		</div>
	</div>

</form>


<!-- Modal S -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">정말 초기화 하시겠습니까?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        모든 데이터가 삭제 됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger"><a href="./memberList.html">삭제</a></button><br>
      </div>
    </div>
  </div>
</div>
<!-- Modal E -->

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
			return false;
        }
	}); 
 	
	var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
	  return new bootstrap.Dropdown(dropdownToggleEl)
	});
	
	

</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
</body>

</htm1>

<!-- <input type="text" id="sample6_postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample6_address" placeholder="주소"><br>
<input type="text" id="sample6_detailAddress" placeholder="상세주소">
<input type="text" id="sample6_extraAddress" placeholder="참고항목">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script> -->



<%-- 	<select name="ifmmSeq">
		<c:forEach items="${list}" var="item" varStatus="status">
			<option><c:out value="${item.ifmmSeq}"/>
			(<c:out value="${item.ifmmId}"/>)</option>
		</c:forEach>
	</select>
	
	<input type="text" name="ifmmId" placeholder="아이디">
	<input type="text" name="ifmmPassword" placeholder="비번">
	<input type="text" name="fdmeEmailFull" placeholder="이메일">
	<input type="text" name="fdmpNumber" placeholder="번호">
	<input type="submit" value="제출"> --%>
