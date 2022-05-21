
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
		<a class="navbar-brand" href="#"><h3>Ten Thousand Recipes</h3></a>
	</div>
</nav>

<form id="FoodFindPW2" name="FoodFindPW2" method="post" action="/food/FoodFindPW2">
	
	<div class="container1" style="margin-top: 100px;" >
		<div class="col-12">
			<div class="input">
				<input type="text" id="CFnumber" name="CFnumber" placeholder="Certification_Number" size="40" style="background: transparent; color: white;">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" size="40" style="background: transparent; color: white;">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="VFifmmPassword" name="VFifmmPassword" placeholder="verify_Password" size="40" style="background: transparent; color: white;">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
		<div>
			<a href="#" style="text-decoration: none;">
		    	<button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id=Send>Send</button>
		   	</a>
	   	</div>
	   	<div>
			<a href="/food/FoodLogin" style="text-decoration: none;">
		    	<button class="btn btn-sm btn-danger" type="button" style="width: 330px; margin-top: 20px;" id="btnback">로그인 화면으로</button>
		   	</a>
		</div>
	</div>
	
<div class="container1">
   	<div class="" style="margin-top: 160px;">
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
		
		$("#CFnumber, #ifmmPassword, #VFifmmPassword").on("click", function(){
			$("#CFnumber").attr("placeholder","인증번호입력")
			$("#ifmmPassword").attr("placeholder","비밀번호입력")
			$("#VFifmmPassword").attr("placeholder","비밀번호확인")
		});
		
		$("#Send").on("click", function(){
			alert("비밀번호가 변경 되었습니다. 로그인 화면으로 이동합니다.(죄송합니다 변경안됬으면 구현 예정입니다.)")
			$("#FoodFindPW2").attr("action","/food/FoodLogin")
			$("#FoodFindPW2").submit();
		});
	
		$("#btnback").on("click", function(){
			var answer = confirm ("검색정보가 초기화 되며, 초기화면으로 돌아갑니다.")
				
			if(answer){
				$(location).attr("href","/food/foodLogin")
			} else {
				return false
			} 
		});
</script>





</form>
</body>

</htm1>

