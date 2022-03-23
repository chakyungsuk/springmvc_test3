<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

		
		
		<c:out value="${item.fdcgSeq}"/> | <c:out value="${item.fdcgName}"/> | <c:out value="${item.fdcgNameEng}"/>| <c:out value="${item.fdcdOrder}"/>
		<c:out value="${item.fdcgDelNy}"/> <br>
		
		<a href ="/code/codeGroupForm2?fdcgSeq=${item.fdcgSeq}&thisPage=<c:out value="${vo.thisPage }"/>&shFdcgDelNy=<c:out value="${vo.shFdcgDelNy}"/>&shFdcgName=<c:out value="${vo.shFdcgName}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">수정</a>
		<a href ="/code/codeGroupForm?fdcgSeq=${item.fdcgSeq}">등록</a> <br>
		<a href ="/code/codeGroupDele?fdcgSeq=${item.fdcgSeq}&thisPage=<c:out value="${vo.thisPage }"/>&shFdcgDelNy=<c:out value="${vo.shFdcgDelNy}"/>&shFdcgName=<c:out value="${vo.shFdcgName}"/>" id="btnDelete">삭제(진짜)</a><br>
		<a href ="/code/codeGroupNele?fdcgSeq=${item.fdcgSeq}&thisPage=<c:out value="${vo.thisPage }"/>&shFdcgDelNy=<c:out value="${vo.shFdcgDelNy}"/>&shFdcgName=<c:out value="${vo.shFdcgName}"/>" id="btnDeleteDelNy">삭제(가짜)</a><br>
		<a href ="/code/codeGroupList?&thisPage=<c:out value="${vo.thisPage}"/>&shFdcgDelNy=<c:out value="${vo.shFdcgDelNy}"/>&shFdcgName=<c:out value="${vo.shFdcgName }"/>">목록</a>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
<script type="text/javascript">

	$("#btnDelete").on("click", function(){
			var answer = confirm ("삭제할거에요?")
			
			if(answer){
				return true
			} else {
				return false
			} 
	});
	
	$("#btnDeleteDelNy").on("click", function(){
			var answer = confirm ("DelNy 를 1로 바꿀까요 ??")
			
			if(answer){
				return true
			} else {
				return false
			} 
	});

</script>