
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
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->


<!-- facebookLogin -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>


<link rel="shortcut icon" href="https://ifh.cc/g/43bP0g.png" type="image/x-icon" />
<title id="ctl00_headerTitle">Ten Thousand Recipes</title>

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

<!-- <form id="formLogin" name="formLogin" method="post" action="/food/FoodLogin"> -->
<form id="formLogin" name="formLogin" method="post" action="./">
	
	<div class="container1" style="margin-top: 100px;" >
		<div class="col-12">
			<div class="input">
				<input type="text" id="ifmmId" name="" placeholder="ID" size="40" style="background: transparent; color: white;" autocomplete="off" value="admin">
			</div>
		</div>
		
		<div class="col-12">
			<div class="input">
				<input type="password" id="ifmmPassword" name="" placeholder="Password" size="40" style="background: transparent; color: white;" value="admin">
			</div>
		</div>
	</div>
			
	<div class="container1" style="margin-top: 50px;">
	<a href="" style="text-decoration: none;">
    	<!-- <button class="btn btn-sm btn-primary" type="submit" style="width: 330px;" id="btnLogin">Login</button> -->
    	<button class="btn btn-sm btn-primary" style="width: 330px;" id="btnLogin" type="button">Login</button>
   	</a>
   	<br>
    <button class="btn btn-sm btn-warning" type="button" style="margin-top: 10px; width: 330px;">
		<a href="javascript:kakaoLogin();" style="text-decoration: none;">
			<div style="color: #fff115;">Kakao Login</div>
		</a>
	</button>
		<div class="col-12" style="margin-top: 50px;">
			<input type="button" id="signUp" class="btn" style="color: red;" value="Sign Up"/>
			<!-- <input type="button" id="FindPW" class="btn" style="color: blue;" value="Find Password"/> -->
		</div>
	</div>
 
<div class="container1">
   	 <%-- <div class="" style="margin-top: 120px;">
		<div class="col-lg-12 col-sm-12">
		    <button class="btn btn-sm" type="button" onclick="fnFbCustomLogin();">
    			<a href="javascript:void(0)" style="text-decoration: none;">
    				<div style="color: #3b5998;">Facebook</div>
   				</a>
   			</button>
		     <button class="btn btn-sm" type="button" id="GgCustomLogin">
    			<a href="javascript:void(0)" style="text-decoration: none;">
    				<div style="color: #ffffff;">Google</div>
    			</a>
   			</button>
		    <button class="btn btn-sm" type="button" onclick="location.href='${url}';">
		    	<div id="naver_id_login" style="display:none;"></div>
    			<a href="javascript:void(0)" style="text-decoration: none;">
    				<div style="color: #00bd00;">Naver</div>
    			</a>
   			</button> 
		</div>
	</div> --%>
  	<!-- <p class="mt-5 mb-3" style="color: gray;">&copy; </p> -->
  	<p class="mt-5 mb-3" style="color: gray;">Copyright &copy; TEN THOUSAND RECIPES 2022</p>
</div>

</form>
<script src="/resources/xdmin/js/sidebars.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">
	
		$("#btnLogin").on("click", function(){
			if(validation() == false) return false;
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/food/loginProc"
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
			return false;
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
<!-- <script type="text/javascript">

	var naver_id_login = new naver_id_login("_TY46wZutTekwAAcohlV", "http://54.151.88.85/index/callback");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://54.151.88.85/food/FoodLogin");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  	
	
</script>
 -->
<!-- 구글연동 -->
<!-- <script>

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
		/* url: 'https://people.googleapis.com/v1/people/me' */
        // key에 자신의 API 키를 넣습니다.
        	/* url : "/infra/member/GloginProc" */
		 data: {personFields:'birthdays', key:'AIzaSyDU8X06NIy7HyTssgzCLXbe-0S3xveczSM', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
     
		 var profile = googleUser.getBasicProfile();
		/* console.log(profile); */
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/food/loginProcGoogle"
			,data : {"ifmmName" : profile.getName()}
			,success: function(response) {
				if(response.rt == "success") {
					/* location.href = "/infra/index/indexView"; */
					location.href = "/food/FoodMain";
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
		
	})
	.fail(function(e){
		console.log(e);
	})
	
}

function onSignInFailure(t){	
	
	console.log(t);
	
}
</script> -->
<!-- //구글 api 사용을 위한 스크립트 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>


<!-- 카카오로그인 -->
<script>
window.Kakao.init('9d80e2a3ed34412759bd6b1eea6603bb');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account; 
                    const profile_nickname = res.properties.nickname; 
                    console.log(kakao_account)		// 받아온 정보들을 출력
                    console.log(profile_nickname)		// 받아온 정보들을 출력
                    $.ajax({
            			async: true 
            			,cache: false
            			,type: "post"
            			,url: "/food/KakaoLgProc"
            			,data : {"ifmmName" : profile_nickname}
            			,success: function(response) {
            				if(response.item == "success") {
            					location.href = "/food/FoodMain";
            				} else {
            					alert("카카오 로그인 실패");
            				}
            			}
            			,error : function(jqXHR, textStatus, errorThrown){
            				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            			}
            		})
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        }, fail: function(err) { //다른 로그인 일때 실행
    	    $.ajax({
        		
        		type: "post"
        		,url: "/food/logoutProc"
        		
        		,success: function(response) {
        			if(response.rt == "success") {
        				location.href = "/food/KakaoLgProc";
        			} 
        		}
        		,error : function(jqXHR, textStatus, errorThrown){
        			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        		}
        		
        	}); 
      }
      
    })

}

</script>

<!-- 페북로그인 -->

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=299726265629174" nonce="JutAfaKH"></script><!-- &autoLogAppEvents=1 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>

<!-- <script>
function checkLoginState() {               					//로그인 클릭시 호출
	    FB.getLoginStatus(function(response) {  
	      statusChangeCallback(response);
	    });
	  }

function statusChangeCallback(response) { 					// FB.getLoginStatus()의 결과호출
	
 console.log(response);             			 			//사용자의 현재 로그인 상태.
	if (response.status === 'connected') {   				// 웹페이지와 페이스북에 로그인이 되어있다면
		testAPI();  
	} else {         			                       		// 웹페이지와 페이스북에 로그인이 되어있지 않다면
		console.log('Please log into this webpage.'); 
	}
}

function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
				console.log('Successful login for: ' + r.name);
			/* 	console.log(testAPI(response)); */
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/food/FBLgProc"
					,data : {"ifmmname" : r.name}		// 넘겨줄 데이터를 설정
					,success: function(response) {
						if(response.item == "success") {
							location.href = "/food/FoodMain";
						} else {
							alert("페이스북 로그인 실패");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}) 
			})
		} 
	}, {scope: 'public_profile,email'});		//profile, email 권한을 나중에 추가하려는 경우 FB.login() 함수로 다시 실행할 수 있다.
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '299726265629174', // 내 앱 ID.
		cookie     : true,
		xfbml      : true,
		version    : 'v13.0'
	});
	FB.getLoginStatus(function(response) {   
		statusChangeCallback(response);        // 로그인 상태를 말해줌
	});
}; 

	function testAPI(response) {                      
	console.log('Welcome!  Fetching your information.... ');
	FB.api('/me', function(response) {
		console.log('Thanks for logging in ' + response.name);
	});
} 

</script> -->

</body>

</htm1>

