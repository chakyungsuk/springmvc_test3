<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   <!--  -- c:out -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- -- 날짜나 시간 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
    
<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/>
   
<% pageContext.setAttribute("br", "\n"); %>
   
<htm1 lang="ko">
 
<head> 
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">

<!-- bootstrap Css -->

<!-- <link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
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
 	@media all and (min-width:359px) and (max-width:1024px)) {
        .container {
          width: auto;
        } 

    }
    @media (min-height: 1024px), screen and (orientation: portrait) { 
  	 	.container {
			margin-bottom: 400px;
   		}
</style>

<form id="formList" name="formList" method="post" action="/member/memberList">	
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
<input type="hidden" id="checkboxSeq" name="checkboxSeq">
<input type="hidden" id="ifmmSeq" name="ifmmSeq">


<div class="container">
	<div class="row">
		<div class="col-12 col-sm-12 col-lg-2">
			<img src="/resources/xdmin/image/manager_image/logo1.png" width="200px">
 		</div>
		<div class="col-12 col-sm-12 col-lg-4" style="text-align: center; margin-top:15px;"> 
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-12 col-sm-12 col-lg-2">
		</div>
		<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 15px;">
		</div>
	</div>
	<div class="container">
		<div class="col-12">
		<ul class="nav nav-tabs" style="margin-top: 20px">
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/member/memberList">회원List</a>
		    </li>
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/food/FoodMain">Food메인화면으로</a>
		    </li>
		</ul>
		</div>
	</div>
	<div style="margin-left: 11px; margin-top: 20px;">
		<h3 style="margin-bottom: 0px;">Member List</h3>
	</div>
	<br>
	<div class="container-sm">
	  <div class="row g-2" id="border">
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" aria-label=".form-select-sm example" name="shmemberDelNy" id="shmemberDelNy">
				<option value="">삭제여부</option>
				<option value="1" <c:if test="${vo.shmemberDelNy eq 1 }">selected</c:if>>삭제</option>
				<option value="0" <c:if test="${vo.shmemberDelNy eq 0 }">selected</c:if>>보관</option>
			</select>
	    </div>
		<div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" style="margin-bottom: 8px;" id="shOptionDate" name="shOptionDate">
				<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>::날짜::</option>
				<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
				<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
				<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생일</option>
			</select>
	    </div>
	    
	    <div class="col-lg-2 col-md-6 col-sm-12">
 			<fmt:parseDate var="shDateStart" value="${vo.shDateStart}" pattern="yyyy-MM-dd HH:mm:ss"/>
 			<input type="text" id="shDateStart" name="shDateStart" class="form-control" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd" />" placeholder="시작일" autocomplete="off">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>
 			<input type="text" id="shDateEnd" name="shDateEnd" class="form-control" value="<fmt:formatDate value="${shDateEnd }" pattern="yyyy-MM-dd" />" placeholder="종료일" autocomplete="off">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<select class="form-select form-select" style="margin-bottom: 8px;" name="shOption" id="shOption">
				<option value="">검색구분</option>
				<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>NAME
				<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>ID
				<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>PassWord
				<option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>E-mail
				<option value="5" <c:if test="${vo.shOption eq 5}">selected</c:if>>Mobile
				<option value="6" <c:if test="${vo.shOption eq 6}">selected</c:if>>Gender
			</select>
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">
			<input class="form-control" type="text" placeholder="검색어" aria-label="default input example" name="shValue" id="shValue" autocomplete="off" value="${vo.shValue }"/>
	    </div>
	    <div class="col-lg-2 col-md-6 col-sm-12">			
	    	<div class="d-md-flex justify-content">
				<button class="btn btn-warning btn-sm me-md-2" type="submit" name="search" id="btnSubmit">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
				<button class="btn btn-danger btn-sm me-md-2 " type="button" id="btnLeset">
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
					    <th scope="col" class="table-active">
						    <div class="form-check form-check-inline" style="margin-right: 0px;">
								<input class="form-check-input" type="checkbox" id="checkboxAll" name="checkboxAll" value="checkboxAll">
							</div>
						</th>
					    <th scope="col" class="table-active">#</th>
					    <th scope="col" class="table-active">Name</th>
					    <th scope="col" class="table-active">ID</th>
					    <th scope="col" class="table-active">PassWord</th>
					    <th scope="col" class="table-active">Gender</th>
					    <th scope="col" class="table-active">Birthday</th>
					    <th scope="col" class="table-active">E-mail</th>
					    <th scope="col" class="table-active">Mobile</th>
					    <th scope="col" class="table-active">regDateTime</th>
					</tr>
				</thead>
				<tbody>
			<%-- <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/> --%>
						    <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">No data!</td>
									</tr>	
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="item" varStatus="status">	
									<tr>
										<td><input class="form-check-input" type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq}"/>"> <br><br></td>
										<td><c:out value="${item.ifmmSeq }"/></td>
										<td><a href="javascript:goView(<c:out value="${item.ifmmSeq}"/>)"><c:out value="${item.ifmmName}"/></a> <br><br></td>
										<td><c:out value="${item.ifmmId}"/> <br><br></td>
										<td><c:out value="${item.ifmmPassword}"/> <br><br></td>
										<td>
											<c:choose>
												<c:when test="${item.ifmmGenderCd eq 1}">
													남성
												</c:when>
												<c:when test="${item.ifmmGenderCd eq 2}">
													여성
												</c:when>
												<c:when test="${item.ifmmGenderCd eq 3}">
													기타
												</c:when>
											</c:choose>
										</td>
									    <td><c:out value="${item.ifmmDob}"/> <br><br></td>
										<td><c:out value="${item.fdmeEmailFull}"/> <br><br></td>
										<td>
											<c:set var="numberPhone" value="${item.fdmpNumber}"/>
								   		    <c:choose>
									      		<c:when test="${fn:length(numberPhone) eq 10 }">
										            <c:out value="${fn:substring(numberPhone,0,3)}"/>
										            - <c:out value="${fn:substring(numberPhone,3,6)}"/>
										            - <c:out value="${fn:substring(numberPhone,6,10)}"/>
										        </c:when>	
												<c:otherwise>
										            <c:out value="${fn:substring(numberPhone,0,3)}"/>
										            - <c:out value="${fn:substring(numberPhone,3,7)}"/>
										            - <c:out value="${fn:substring(numberPhone,7,11)}"/>
										        </c:otherwise>
											</c:choose>	 
										</td>
										<td><fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/> <br><br></td>
									</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>	 
				</tbody>
			</table>
		</div>
	</div>

<!-- Page S -->
<nav aria-label="...">
	<ul class="pagination justify-content-center">
		  
	<!-- Previous -->
	<c:if test="${vo.startPage gt vo.pageNumToShow}">
		<li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${vo.startPage - 1}'/>');">Previous</a></li>
	</c:if>
		
	<!-- Page -->    
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">  
	                <li class="page-item active"><a class="page-link" href="javascript:goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
	                <li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>  
	
	<!-- Next -->
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${vo.endPage + 1}'/>');">Next</a></li>
	</c:if>
	
	<!-- Page E -->
	</ul>
</nav>



<div class="container">
	<div class="col-lg-12 col-md-12 col-sm-12" >
		<button type="submit" id="btnDelete" class="btn btn-danger btn-sm me-md-2 "  style="float: left;"><i class="fa-solid fa-trash-can"></i></button>
		<button type="submit" id="btnNelete" class="btn btn-primary btn-sm me-md-2" style="float: left;"><i class="fa-solid fa-trash-can"></i></button>
	</div>
		
	<div class="d-md-flex justify-content-end" >
		<button class="btn btn-info btn-sm me-md-2 " type="button" id="goForm">
			<i class="fa-solid fa-plus"></i>	
		</button>
	</div>
</div>


</div>


<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>



<script>

	var checkboxSeqArray = [];
	var goUrlMultiUele = "/member/memberMultiUele";

	goList = function(seq){
		$("#thisPage").val(seq)		// form 객체를 가져온다.
		$("#formList").submit();	// 그 가져온 객체를 전달한다.
	}

	goView = function(seq){
		$("#ifmmSeq").val(seq)	
		$("#formList").attr("action","/member/memberView");
		$("#formList").submit();
	}
		
	$("#goForm").on("click", function(){
		$("#formList").attr("action","/member/memberForm");
		$("#formList").submit();
	}); 
	

	$("#btnSubmit").on("click", function(){
		if(!checkNull($("#shmemberDelNy"),$("#shmemberDelNy").val(), "삭제여부 확인 바합니다.")) return false;
		
		if ($("#shOption").val() == '6') {
			if ($.trim($("#shValue").val()) == "남성") {
				$("#shGenderCd").val(1);
			} else if ($.trim($("#shValue").val()) == "여성") {
				$("#shGenderCd").val(2);
			} else {
				alert("검색어 입력이 올바르지 않습니다! (남성,여성 만 가능))");
				return false;
			}
		} else {
			/* by pass */
		}
	});
	
	//리셋	
	$("#btnLeset").on("click", function(){
		var answer = confirm ("검색정보가 초기화 되며, 초기화면으로 돌아갑니다.")
			
		if(answer){
			$(location).attr("href","/member/memberList")
		} else {
			return false
		} 
	});
	
	//달력
	$(document).ready(function(){
		 $("#shDateEnd").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
	
	$(document).ready(function(){
		 $("#shDateStart").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
	

	
	//체크박스

	$("#checkboxAll").click(function() {
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
	});

	$("input[name=checkboxSeq]").click(function() {

		var total = $("input[name=checkboxSeq]").length;
		var checked = $("input[name=checkboxSeq]:checked").length;
		if (total != checked)
			$("checkboxAll").prop("checked", false);
		else
			$("checkboxAll").prop("checked", true);
	});
	
  	var checkboxSeqArray = [];
  	
	//진짜삭제
	$("#btnDelete").on("click", function(){
		var answer = confirm ("삭제하시겠습니까?(Delete)")
		
		if(answer){
			$("input[name=checkboxSeq]:checked").each(function() { //체크되어있는지 확인하고 
				checkboxSeqArray.push($(this).val()); //되어있으면 checkboxSeqArray에 순차적으로 값을 넣는다
			});

			$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
			$("#formList").attr("action", "/member/MultiDele");
			$("#formList").submit();
		} else {
			return false
		} 
	});  	
  	
	$("#btnNelete").on("click", function() {
		var answer = confirm("데이터 삭제?");

		if (answer) {
			$("input[name=checkboxSeq]:checked").each(function() { //체크되어있는지 확인하고 
				checkboxSeqArray.push($(this).val()); //되어있으면 checkboxSeqArray에 순차적으로 값을 넣는다
			});

			$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
			$("#formList").attr("action", "/member/MultiUele");
			$("#formList").submit();

		} else {
			return false;
		}  
	});
</script>
	
		</form>
	</body>
</htm1>

