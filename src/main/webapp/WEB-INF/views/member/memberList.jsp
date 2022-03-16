<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">

<!-- bootstrap Css -->

<!-- <link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap extra Css -->


<!-- user css -->
<script src="https://kit.fontawesome.com/ac511b8e02.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">


<title>Cha html projects</title>
</head>
<body>

<style type="text/css">
	/* .container {
		width: 940px;
        margin: 10px auto;
        padding: 20px; */
        
 /*  	justify-content: center;  수평 정렬 
		align-items: center;  수직 정렬 
		width: 700px; 
		min-width:480px;
		max-width:767px;  */
	
	#border {
		border: 1px solid;
		border-color: gray; 
		border-top-style : non;
		border-left-style : non;
		border-bottom-style : non;
		border-left-style : non;
	}
	#left {
		float: right;
	}
 	@media ( max-width:767px ) {
        .container {
          width: auto;
        }
	
</style>

<form id="" name="" method="get" action="/member/memberList">	
<div class="container">
	<div class="row">
		<div class="col-12 col-sm-12 col-lg-2">
			<img src="/resources/xdmin/image/manager_image/logo1.png" width="200px">
 		</div>
		<div class="col-12 col-sm-12 col-lg-4" style="text-align: center; margin-top:15px;"> 
			<h3>Ten Thousand Recipes</h3>
		</div>
		<div class="col-12 col-sm-12 col-lg-1">
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 15px;">
			<img src="/resources/xdmin/image/manager_image/USER(CEO).jpg" width="30px" style="float: left; margin-right: 10px;">
			<h6>Cha (CEO)</h6> <h6>Administrator</h6>
		</div>
		<div class="col-12 col-sm-4 col-lg-1" style="margin-top: 20px;">
			<select class="form-select form-select-sm" aria-label=".form-select-sm example">
				<option selected>언 어</option>
				<option value="1">한 국</option>
				<option value="2">미 국</option>
				<option value="3">일 본</option>
			</select>
		</div>
	</div>
	<div class="container">
		<div class="col-12">
		<ul class="nav nav-tabs" style="margin-top: 20px">
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="#">Home</a>
		    </li>
	    	<li class="nav-item">
	    		<a class="nav-link" style="color: black" href="#">회원관리</a>
		    </li>
		  	<li class="nav-item">
		    	<a class="nav-link" style="color: black" href="#">시스템관리</a>
		  	</li>
			<div class="dropdown">
				<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
				기타사항</button>
			<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				<li><a class="dropdown-item" href="#">기타</a></li>
				<li><a class="dropdown-item" href="#">기타</a></li>
				<li><a class="dropdown-item" href="#">기타</a></li>
			</ul>
			</div>
		</ul>
		</div>
	</div>
	<div style="margin-left: 11px; margin-top: 20px;">
		<h3 style="margin-bottom: 0px;">Code</h3>
	</div>
	<br>
	<div class="container-sm">
	  <div class="row g-2" id="border">
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" aria-label=".form-select-sm example" name="shFdcgDelNy">
				<option selected>삭제여부</option>
				<option value="1">삭제</option>
				<option value="0">보관</option>
			</select>
	    </div>
		<div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" aria-label=".form-select-sm example">
				<option selected>날짜</option>
				<option value="1">1월</option>
				<option value="2">2월</option>
				<option value="3">3월</option>
				<option value="4">4월</option>
				<option value="5">5월</option>
				<option value="6">6월</option>
				<option value="7">7월</option>
				<option value="8">8월</option>
				<option value="9">9월</option>
				<option value="10">10월</option>
				<option value="11">11월</option>
				<option value="12">12월</option>
			</select>
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	      <input class="form-control" type="text" placeholder="시작일" aria-label="default input example">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	     <input class="form-control" type="text" placeholder="종료일" aria-label="default input example">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" aria-label=".form-select-sm example" style="margin-bottom: 8px;">
				<option selected>검색구분</option>
				<option value="1">이름</option>
				<option value="2">나이</option>
				<option value="3">주소</option>
			</select>
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<input class="form-control" type="text" placeholder="검색어" aria-label="default input example">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    	<div class="d-md-flex justify-content">
				<button class="btn btn-warning btn-sm me-md-2" type="button" >
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
				<button class="btn btn-danger btn-sm me-md-2 " type="button" >
					<i class="fa-solid fa-arrow-rotate-right"></i>
				</button>
			</div>
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    </div>
  	</div>
	</div>
	<hr>
	<div class = "container-sm">	
		<div class="table table-dark table-hover">
			<table class="table">
				<thead>
					<tr>
					    <th scope="col" class="table-active">#</th>
					    <th scope="col" class="table-active">ID</th>
					    <th scope="col" class="table-active">PassWord</th>
					    <th scope="col" class="table-active">E-mail</th>
					    <th scope="col" class="table-active">Mobile</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
										<c:out value="${item.ifmmSeq}"/> <br>
									</c:forEach>
								</c:otherwise>
							</c:choose>	 
						</td>
						
						<td>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
										<a href="/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmId}"/></a> <br>
									</c:forEach>
								</c:otherwise>
							</c:choose>	 
						</td>
					
						<td>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
										<a href="/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmPassword}"/></a> <br>
									</c:forEach>
								</c:otherwise>
							</c:choose>	 
						</td>
						
						<td>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
										 <a href="/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.fdmeEmailFull}"/></a> <br>
									</c:forEach>
								</c:otherwise>
							</c:choose>	 
						</td>
						
						<td>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
										 <a href="/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.mobile}"/></a> <br>
									</c:forEach>
								</c:otherwise>
							</c:choose>	 
						</td>
						
			 		 </tr>
				</tbody>
			</table>
		</div>
	</div>

<nav aria-label="...">
	<ul class="pagination justify-content-center">
		<!-- Page S -->
		<nav aria-label="...">
	  		<ul class="pagination">
		  
		<!-- Previous -->
		<c:if test="${vo.startPage gt vo.pageNumToShow}">
			<li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		
		<!-- Page -->    
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">  
		                <li class="page-item active"><a class="page-link" href="/member/memberList?thisPage=${i.index}">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
		                <li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>  
		
		<!-- Next -->
		<c:if test="${vo.endPage ne vo.totalPages}">                
			<li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
		</c:if>
		
	  		</ul>
		</nav>
		<!-- Page E -->
	</ul>
</nav>




<div class="container">
	<div class="col-lg-12 col-md-12 col-sm-12" >
			<button type="button" class="btn btn-danger btn-sm me-md-2 " data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float: left;"  >
				<i class="fa-solid fa-trash-can"></i>
			</button>
		</div>
		<div class="d-md-flex justify-content-end" >
			<button class="btn btn-success btn-sm me-md-2 " type="button" >
				<i class="fa-solid fa-file-excel"></i>	
			</button>
			<a href="./memberFrom.html">
				<button class="btn btn-info btn-sm me-md-2 " type="button" >
					<i class="fa-solid fa-plus"></i>	
				</button>
			</a>
		</div>
	</div>
</div>

<!-- Modal -->

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">정말 삭제 하시겠습니까?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        삭제하시게 되시면 모든 데이터가 삭제 됩니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-danger"><a href="./memberList.html">삭제</a></button><br>
      </div>
    </div>
  </div>
</div>


<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>


</form>
		</body>
	</htm1>






<%-- <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">No data!</td>
		</tr>	
	</c:when>
	
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
			<c:out value="${item.ifmmSeq}"/> | <a href="/infra/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmId}"/></a>
			| <a href="/infra/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmPassword}"/></a> <br>
		</c:forEach>
	</c:otherwise>
</c:choose>	  --%>