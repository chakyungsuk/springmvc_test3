
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

<nav class="navbar navbar-dark" aria-label="First navbar example">
	<div class="container" style="justify-content: center;">
		<a class="navbar-brand"><h3>Ten Thousand Recipes</h3></a>
	</div>
</nav>

<form id="formLogin" name="formLogin" method="post" action="/food/FoodLogin">
	
	<div class="container1" style="margin-top: 100px;" >
		<div class="col-12">
			<div class="input">
				<input type="text" id="ifmmId" name="ifmmId" placeholder="ID" size="40" style="background: transparent; color: white;" autocomplete="off">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" size="40" style="background: transparent; color: white;">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
		<a href="/food/FoodMain" style="text-decoration: none;">
    <button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id=btnLogin>Login</button>
   	</a>
		<div class="col-12" style="margin-top: 50px;">
			<input type="button" id="signUp" class="btn" style="color: red;" value="Sign Up"/>
			<input type="button" id="FindPW" class="btn" style="color: blue;" value="Find Password"/>
		</div>
	</div>
	
<div class="container1">
   	<div class="" style="margin-top: 120px;">
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
		
		$("#btnLogin").on("click", function(){
			$("#formLogin").attr("action","/food/FoodMain");
			$("#formLogin").submit();
		});
		
		$("#signUp").mouseover(function(){
			$('#signUp').val('회원가입')
		});
		$("#signUp").mouseout(function(){
			$('#signUp').val('SignUp');
		});
		$("#signUp").on("click", function(){
			$("#formLogin").attr("action","/member/memberForm")
			$("#formLogin").submit();
		});
		
		$("#FindPW").mouseover(function(){
			$('#FindPW').val('비밀번호찾기')
		});
		$("#FindPW").mouseout(function(){
			$('#FindPW').val('Find Password');
		});
		$("#FindPW").on("click", function(){
			$("#formLogin").attr("action","/food/FoodFindPW")
			$("#formLogin").submit();
		});

		
	
	

</script>





</form>
</body>

</htm1>

