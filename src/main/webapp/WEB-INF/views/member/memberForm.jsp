<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action="/member/memberInst">

<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/navbars/">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>

<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/xdmin/css/navbar.css" rel="stylesheet">


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

<nav class="navbar navbar-dark" aria-label="First navbar example">
	<div class="container" style="justify-content: center;">
		<a class="navbar-brand" href="#"><h3>Ten Thousand Recipes</h3></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>

	<div class="collapse navbar-collapse" id="navbarsExample01">
		<ul class="navbar-nav me-auto mb-2">
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="#">Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Disabled</a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown01">
					<li><a class="dropdown-item" href="#">Action</a></li>
					<li><a class="dropdown-item" href="#">Another action</a></li>
					<li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>


<div class="container1" style="margin-top: 150px;" >
	<div class="col-12">
		<div class="input">
			<input type="text" id="ifmmId" name="ifmmId" placeholder="ID" size="40" style="background: transparent;" >
		</div>
	</div>
	<div class="col-12">
		<div class="input">
			<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" size="40" style="background: transparent;">
		</div>
	</div>
	<div class="col-12">
		<div class="input">
			<input type="text" id="fdmeEmailFull" name="fdmeEmailFull" placeholder="E-mail" size="40" style="background: transparent;">
		</div>
	</div>
	<div class="col-12">
		<div class="input">
			<input type="text" id="fdmpNumber" name="fdmpNumber" placeholder="Mobile" name="fdmeEmailFull" size="40" style="background: transparent;">
		</div>
	</div>
</div>
		
<div class="container1" style="margin-top: 40px;">
	<div class="row">
		<div class="col-12">
			<div class="form-check">
				<label class="form-check-label" for="flexCheckDefault" style="color: gray;">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
				이메일 정보 마케팅 사용 동의</label>
			</div>
		</div>
		<div class="col-12">
			<div class="form-check" style="margin-top: 10px;">
				<label class="form-check-label" for="flexCheckDefault" style="color: gray;">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
				모바일 정보 마케팅 사용 동의</label>
			</div>
		</div>
	</div>

	<div class="col-12" style="margin-top: 100px;">
		<div>
			<input type="button" class="btn" style="color: red;" value="RESET" data-bs-toggle="modal" data-bs-target="#staticBackdrop" />			
			<input type="submit" class="btn" style="color: blue;" value="Submit" id="btnSubmit"/>			
		</div>
	</div>
</div>

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
	});
	
</script>
 
 <!-- Bootstrap core Js -->
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.sidebars.js"></script>


</body>

</htm1>



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
</form>