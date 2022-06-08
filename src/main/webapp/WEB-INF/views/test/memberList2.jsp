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


<title>Cha html projects</title>
</head>

<style type="text/css">

</style>

<body>
<form id="formView" name="formView" method="post" action="/member/memberList">	

<div class="container" style="text-align: center;">
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
			<input class="form-control" type="text" id="ifmmPassword2" name="ifmmPassword2" type="text" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이메일</h6>
			<input class="form-control" id="fdmeEmailFull" name="fdmeEmailFull" type="text" placeholder="name@example.com" autocomplete="off">
		</div>
		<div class="col-12 col-lg-6 col-sm-12" style="margin-bottom: 12px;">
			<h6>이름</h6>
			<input class="form-control" type="text" id="ifmmName" name="ifmmName">
		</div>
		<div class="col-12 col-lg-6 col-sm-12">
		</div>
	</div>
	<br>
	<div class="col-lg-4 col-md-6 col-sm-6">
		<button type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-outline-primary" style="width: 200px;">등록</button>
	</div>
</div>


</form>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">

$("#btnSubmit").on("click", function(){
	 var pw = $("#ifmmPassword").val();
	 var pw2 = $("#ifmmPassword2").val();
	 
	 if( pw != pw2){
		alert("비밀번호가 틀립니다.");
		return false;
	} else {
		alert("비밀번호가 맞습니다");
		return true;
	};
});
</script>



</body>
</htm1>





