<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<html lang="ko">
 
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Cha html projects</title>

    <!-- Bootstrap core CSS -->
<link href="../../../bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../../../bootstrap/bootstrap-5.1.3-examples/sign-in/signin.css" rel="stylesheet">

 <style>
      body {
        height: 100vh;
        background-image: url('../../../images/manager_image/fdmain4-1.jpg ');
        background-repeat : no-repeat;
        background-size : cover;
        max-width:100%;
      } 
      .container {
     	margin: auto;
      	margin-right: 800px;
      	max-width: 400px;
      }
      .input {
      	border-top: noee;
      	border-left: none;
      	border-right: none;
      	border-bottom : none;
  		outline: none;
      }
      .btn {
      	width: auto;
      	background-color: transparent;
      }
      #button {
      	background-color: transparent;
      }
      #button2 {
      	background-color: transparent;
      }
      @media all and (min-width:360px) and (max-width:1024px) {
       .container {
       	margin: auto;
       }
      }
      @media (min-height: 1024px), screen and (orientation: portrait) { 
    	.container {
       margin-bottom: 400px;
      }
      }
</style>

</head>

<body class="text-center">
    
<div class="container">
    <h1 class="h3 mb-5 fw-normal" style="color: white;">Ten Thousand Recipes</h1>
    
   	<div class="input" style="margin-bottom: 10px;">
		<input type="text" placeholder="ID" size="40" style="background: transparent;">
   	</div>
    <div class="input">
   		<input type="password" placeholder="Password" size="40" style="background: transparent;">
    </div>
    <div class="checkbox mb-4" style="margin-top: 10px;">
		<label>
			<p style="color: gray;"><input type="checkbox"> Remember me </p>
		</label>
	</div>
	<a href="../member/memberList.html" style="text-decoration: none;">
    <button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id=button>Login</button>
   	</a>
   	
   	<div style="margin-top: 30px;">
		<a href="../member/memberFrom.html" style="text-decoration: underline;">
	    	<div style="color: #ffffff;">Sign Up</div>
	   	</a>
   	</div>
   
   	
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

</body>
</html>
