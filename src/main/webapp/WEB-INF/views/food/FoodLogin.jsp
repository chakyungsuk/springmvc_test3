
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
<script src="/resources/xdmin/js/sidebars.js"></script>

<!-- naverLogin -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  
<!-- GoogleLogin -->
<meta name ="google-signin-client_id" content="705025172192-b6e4avr6h5p13nrdj40u8tduucmti0fu.apps.googleusercontent.com">  
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

<!-- facebookLogin -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>


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
				<input type="text" id="ifmmId" name="ifmmId" placeholder="ID" size="40" style="background: transparent; color: white;" autocomplete="off" value="111">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" size="40" style="background: transparent; color: white;" value="111">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
	<a href="" style="text-decoration: none;">
    	<button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id="btnLogin">Login</button>
   	</a>
		<div class="col-12" style="margin-top: 50px;">
			<input type="button" id="signUp" class="btn" style="color: red;" value="Sign Up"/>
			<input type="button" id="FindPW" class="btn" style="color: blue;" value="Find Password"/>
		</div>
	</div>
	
<div class="container1">
   	<div class="" style="margin-top: 120px;">
		<div class="col-lg-12 col-sm-12">
		    <button class="btn btn-sm" type="button" onclick="fnFbCustomLogin();">
    			<a href="javascript:void(0)" style="text-decoration: none;">
    				<div style="color: #3b5998;">Facebook</div>
   				</a>
   			</button>
		    <button class="btn btn-sm" type="button">
    			<a href="javascript:kakaoLogin();" style="text-decoration: none;">
    				<div style="color: #fff115;">Kakao</div>
    			</a>
   			</button>
		    <button class="btn btn-sm" type="button" id="GgCustomLogin">
    			<a href="javascript:void(0)" style="text-decoration: none;">
    				<div style="color: #ffffff;">Google</div>
    			</a>
   			</button>
		    <button class="btn btn-sm" type="button" id="naver_id_login">
    			<a href="javascript:void(0)" style="text-decoration: none;">
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
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">
		
		
		$("#btnLogin").on("click", function(){
			alert("로그인 시도")
			if(validation() == false) return false; 
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/food/loginProc"
				,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/food/FoodMain";
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		validation = function() {
			if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력해주세요.")) return false;
			if(!checkNull($("#ifmmPassword"), $("#ifmmPassword").val(), "비밀번호를 입력해주세요.")) return false;
		}
		
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

<!-- 네이버 연동 -->
<script type="text/javascript">

	var naver_id_login = new naver_id_login("_TY46wZutTekwAAcohlV", "http://localhost:8090/food/FoodMain");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,30);
	naver_id_login.setDomain("http://localhost:8090/food/FoodLogin");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
</script>

<!-- 구글 연동 -->
<script type="text/javascript">
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}
function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyDU8X06NIy7HyTssgzCLXbe-0S3xveczSM', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}
</script>

<!-- 페이스북 연동 -->
<script>
//기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
function statusChangeCallback(res){
	statusChangeCallback(response);
}
  
function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
			})
		} else if (response.status === 'not_authorized') {
			// 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
			alert('앱에 로그인해야 이용가능한 기능입니다.');
		} else {
			// 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
			alert('페이스북에 로그인해야 이용가능한 기능입니다.');
		}
	}, {scope: 'public_profile,email'});
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '299726265629174', // 내 앱 ID를 입력한다.
		cookie     : true,
		xfbml      : true,
		version    : 'v13.0'
	});
	FB.AppEvents.logPageView();   
};
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=299726265629174" nonce="SiOBIhLG"></script>

<!-- kakao 로그인 -->
<script>
	Kakao.init('9d80e2a3ed34412759bd6b1eea6603bb');
	console.log(Kakao.isInitialized());   // 웹화면상에서 제대로 초기화가 되었는지 콘솔에서 확인할 수 있습니다.

	kakaoLogin = function(){     // 버튼에 링크를 걸었던 자바스크립트 함수.
		
		Kakao.Auth.authorize({   //사용자가 앱에 로그인할 수 있도록 인가 코드를 요청
			redirectUri: 'http://localhost:8090/food/FoodMain'
			//kakao developers 페이지에서 설정했던 redirectUri를 그대로 작성해줍니다.
			//이렇게 하면 로그인 성공시 해당 주소로 redirect 됩니다.
		});
		
	}

</script>



</form>
</body>

</htm1>

