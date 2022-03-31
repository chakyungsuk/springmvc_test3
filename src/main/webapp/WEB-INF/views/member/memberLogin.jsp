
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Signin Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    

<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sign-in/signin.css" rel="stylesheet">

<title>Cha html projects</title>

<style>

</style>

</head>

<body class="text-center">


<main class="form-signin">
<form id="formLogin" name="formLogin" method="post" action="/member/memberLogin">


    <h3 class="" style="margin-bottom: 100px;">Ten Thousand Recipes</h3>

    <div class="form-floating mb-2">
      <input type="email" class="form-control" id="ifmmId" name="ifmmId" placeholder="Staff Number" autocomplete="off" value="111">
      <label for="floatingInput">Staff Number</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="Password" value="111">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <div>
    <button class="w-100 btn btn-lg btn-primary" type="button" id="btnLogin" name="">Login</button>
	</div>
   	<p class="" style="color: gray;">&copy; Happy Food 2022 ~</p>
  </form>
</main>

	


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

<script type="text/javascript">
		
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
			$("#formLogin").attr("action","/member/memberFindPW")
			$("#formLogin").submit();
		});

		$("#btnLogin").on("click", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/loginProc"
				,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/index/indexView";
					} else {
						alert("회원없음");
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

