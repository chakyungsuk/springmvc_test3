<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form id="form" method="post" action="/code/codeGroupInst">
	<input type="text" id="fdcgName" name="fdcgName" placeholder="이름">
	<input type="text" id="fdcgNameEng" name="fdcgNameEng" placeholder="영어이름">
	<input type="text" id="fdcdName" name="fdcdName" placeholder="코드이름">
	<input type="submit" id="btnSubmit" value="제출">
</form> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>


<script type="text/javascript">

	$("#btnSubmit").on("click", function(){
	
		// 이름
		if(!checkNull($("#fdcgName"),$("#fdcgName").val(), "이름을 입력해 주세요")) return false;
	
		//영어이름
		if(!checkNull($("#fdcgNameEng"),$("#fdcgNameEng").val(), "영문 이름을 입력해 주세요.")) return false;
		if(!checkOnlyEnglish($("#fdcgNameEng"),$("#fdcgNameEng").val(), "영문만 입력해 주십시요.")) return false;
	
		
		//select 부분		
/* 		if($("#").val() == 2) {
			alert("2번 선택되었습니다")
		} else {
			
		} */
});

</script>