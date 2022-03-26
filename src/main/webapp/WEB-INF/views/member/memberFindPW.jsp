
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
      	background-color: transparent;
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

<form id="formLogin" name="formLogin" method="post" action="/member/memberInst">
	
	<div class="container1" style="margin-top: 100px;" >
		
		<div class="col-12">
			<div class="input">
				<input type="text" id="fdmeEmailFull" name="fdmeEmailFull" placeholder="E-mail" size="40" style="background: transparent; color: white;">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
		<a href="../member/memberList.html" style="text-decoration: none;">
	    	<button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id=SnedEmail>이메일로 임시번호 전송</button>
	   	</a>
	</div>
	
<div class="container1">
   	<div class="" style="margin-top: 260px;">
		<div class="col-lg-12 col-sm-12">
		    <button class="btn btn-sm" type="submit">
    			<a href="https://www.facebook.com/" style="text-decoration: none;">
    				<div style="color: #3b5998;">Facebook</div>
   				</a>
   			</button>
		    <button class="btn btn-sm" type="submit">
    			<a href="https://www.kakaocorp.com/" style="text-decoration: none;">
    				<div style="color: #fff115;">Kakao</div>
    			</a>
   			</button>
		    <button class="btn btn-sm" type="submit">
    			<a href="https://www.google.co.kr/" style="text-decoration: none;">
    				<div style="color: #ffffff;">Google</div>
    			</a>
   			</button>
		    <button class="btn btn-sm" type="submit">
    			<a href="https://www.naver.com/" style="text-decoration: none;">
    				<div style="color: #00bd00;">Naver</div>
    			</a>
   			</button>
		</div>
	</div>
  	<p class="mt-5 mb-3" style="color: gray;">&copy; Happy Food 2022 ~</p>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
	

<script type="text/javascript">
		
		$("#SnedEmail").on("click", function(){
			alert("임시번호가 발송되었습니다. 이메일을 확인 해주세요.")
			$("#formLogin").attr("action","/member/memberFindPW2")
			$("#formLogin").submit();
		});
	

</script>





</form>
</body>

</htm1>

