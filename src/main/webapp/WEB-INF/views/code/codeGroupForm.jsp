<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

<form id="form" method="post" action="/code/codeGroupInst">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
	<input type="hidden" name="shFdcgDelNy" value="<c:out value="${vo.shFdcgDelNy }"/>">
	<input type="hidden" name="shFdcgName" value="<c:out value="${vo.shFdcgName }"/>">
	<input type="hidden" name="">
	
	
	<input type="text" id="fdcgName" name="fdcgName" placeholder="이름">
	<input type="text" id="abcDate" name="abc">
	<input type="submit" id="btnSubmit" value="제출">
</form> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>



<script type="text/javascript">

	$(document).ready(function(){
		 $("#abcDate").datepicker();
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
	
	$("#btnSubmit").on("click", function(){
	
		// 이름
/* 		if(!checkNull($("#fdcgName"),$("#fdcgName").val(), "이름을 입력해 주세요")) return false;
	
		//영어이름
		if(!checkNull($("#fdcgNameEng"),$("#fdcgNameEng").val(), "영문 이름을 입력해 주세요.")) return false;
		if(!checkOnlyEnglish($("#fdcgNameEng"),$("#fdcgNameEng").val(), "영문만 입력해 주십시요.")) return false; */
	
		
		//select 부분		
/* 		if($("#").val() == 2) {
			alert("2번 선택되었습니다")
		} else {
			
		} */
	});
	
	

</script>