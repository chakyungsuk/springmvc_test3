<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE HTML>
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
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/navbars/navbar.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.css" rel="stylesheet">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-examples/headers/headers.css" rel="stylesheet">
 <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">

<title>Cha html projects</title>

<style type="text/css">
	body {
		width: 100%;
		/* background-image: url('../../../images/user_image/backC.jpg'); */
		background-size: cover;
		background-color: gray;
		background-repeat : no-repeat; 
	}
/* 	.album {
		background-image: url('../../../images/user_image/backC.jpg');
		background-size: cover;
	} */
    .input {
		text-align:center;
		justify-content:center;
		margin-bottom: 20px;
   	}
</style>

</head>

<body class="text-center">
	<!-- Header S -->
    <div class="container navbar navbar-dark" aria-label="Eighth navbar example" style="margin-bottom: 2px;">
    <div class="col-lg-8 col-sm-8" style="text-align: left;" >
      <a class="navbar-brand" href="#">Ten Thousand Recipes</a>
     </div>
     <div class="col-lg-3 col-sm-3">
      <a href=""><input type="button" id="signUp" class="btn" style="color: white;" value="NEW Recipes(레시피 등록)"/></a>
      </div>
      <div class="col-lg-1 col-sm-1">
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
        <span class="navbar-toggler-icon"></span>
      </button>
      </div>
    <!-- Header E -->

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
  </div>
<!-- sidebar body E -->	
</nav>


	<!-- Body S -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd_re1.png" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd6-1.jpg" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="/resources/xdmin/image/user_image/fd3.jpg" class="d-block w-100" alt="..." style="height: 600px;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	

<div class="album py-5 bg-light">
	<div class="col-12">
		<h4 style="margin-bottom: 30px;">TOP 레시피 명예의 전당</h4>
	</div>			
    <div class="container">

      <div class="row row-cols-3 row-cols-sm-3 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank2.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">백파더 백종원 에그치즈토스트 ~ 간단한데 맛은 최고!</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">5 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank1.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">닭봉간장조림~ 십년째 만들어 먹는 양념 공유해요!</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">1 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank3.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">이것은 구름인가 토스트인가 살살 녹는 토스트</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">10 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank4.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">초간단 간식용 및 반찬 소세시 감자 볶음 레시피 공유!</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">20 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank5.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">양배추 참치 덮밥</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">24 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank6.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">이세상 김치 볶음밥이 아니다! 초간단 레시피</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">30 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank7.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">간식 및 안주용 으로 제격! 새우 튀김 :)</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">50 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank8.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">(신혼♥)집에서 만드는 간단 반찬 공유~</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">1 days</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow">
			<a class="thumbnail" href="" style="height:250px;">
              <img src="/resources/xdmin/image/user_image/lank9.jpg" style="margin-top: 20px;"></a>
            <div class="card-body" style="">
              <p class="card-text">술안주로 매콤한 돼지갈비찜 죽입니다!!</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <a ref=""><button type="button" class="btn btn-sm btn-outline-secondary">자세히</button></a>
                </div>
                <small class="text-muted">3 days</small>
              </div>
            </div>
          </div>
        </div>
       </div>
     </div>
   </div>


<footer class="text">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#" style="color: white;">Back to top</a>
    </p>
<p class="" style="color: white; justify-content: center;">&copy; Happy Food 2022 ~</p> 
 </div>
</footer>


<script type="text/javascript">

</script>




	<!-- Bootstrap core Js -->
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-examples/sidebars/sidebars.js"></script>

</body>

</htm1>


