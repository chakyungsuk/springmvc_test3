<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id="" name="" method="get" action="/code/codeGroupList">
<select name="shFdcgDelNy" id=shFdcgDelNy>
	<option value="">::삭제여부::</option>
	<option value="1" <c:if test="${vo.shFdcgDelNy eq 1 }">selected</c:if>>Y
	<option value="0" <c:if test="${vo.shFdcgDelNy eq 0 }">selected</c:if>>N
</select>
||
회원이름 : <input type="text" name="shFdcgName" id="shFdcgName" value="${vo.shFdcgName }"/>
||
<select name="shOption" id="shOption">
	<option value="">::검색구분::</option>
	<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>한글
	<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>영문
</select>

<input type="text" name="shValue" id="shValue" value="${vo.shValue }"/>
<input type="submit" id="btnSubmit" name="search">
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.fdcgSeq}"/> | <a href="/code/codeGroupView?fdcgSeq=${item.fdcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">
		<c:out value="${item.fdcgName}"/></a> 
		| <a href="/code/codeGroupView?fdcdSeq=${item.fdcdSeq}"><c:out value="${item.fdcdName}"/></a> | <c:out value="${item.fdcgNameEng}"/>
		| <c:out value="${item.fdcdOrder}"/> | <c:out value="${item.fdcgDelNy}"/> <br>

		</c:forEach>
	</c:otherwise>
</c:choose>	 

<br>

<c:out value="${vo.startPage}" />

<!-- Page S -->
<nav aria-label="...">
  <ul class="pagination">
  
<!-- Previous -->
<c:if test="${vo.startPage gt vo.pageNumToShow}">
	<li class="page-item"><a class="page-link" href="/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
</c:if>

<!-- Page -->    
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">  
                <li class="page-item active"><a class="page-link" href="/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>  

<!-- Next -->
<c:if test="${vo.endPage ne vo.totalPages}">                
	<li class="page-item"><a class="page-link" href="/code/codeGroupList?thisPage=${vo.endPage + 1}">Next</a></li>
</c:if>

<!-- Page E -->
  </ul>
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>


<script type="text/javascript">	
	$("#btnSubmit").on("click", function(){
		
	/* 	if(!checkNull($("#shFdcgDelNy"), $("#shFdcgDelNy").val(), "삭제여부 없음")) return false;
		if(!checkNull($("#shFdcgName"), $("#shFdcgName").val(), "이름 없음")) return false;
		if(!checkNull($("#shOption"), $("#shOption").val(), "한영 선택 없음")) return false;
		if(!checkNull($("#shValue"), $("#shValue").val(), "검색부분 입력 바람")) return false; */
/* 		
		if($("#shFdcgDelNy").val() == "" || $("#shFdcgDelNy").val() == null){
			alert("삭제여부없음")
			$("#shFdcgDelNy").focus();
		} 
		
		if($("#shFdcgName").val() == "" || $("#shFdcgName").val() == null){
			alert("이름없음")
			$("#shFdcgName").focus();
		}

		if($("#shOption").val() == "" || $("#shOption").val() == null){
			alert("한글,영어 선택 없음")
			$("#shOption").focus();
		}
		
		if($("#shValue").val() == "" || $("#shValue").val() == null){
			alert("입력값없음")
			$("#shValue").focus();
		} */
		
		
		/* alert("hello");
		confirm("askdjkasjdjk"); */
		
/* 	 	alert($("input[name=shFdcgName]").val()); 
		
		alert( $("#shFdcgDelNy").val() );  // jquery 방식
		$("#shFdcgDelNy").val(1234);
		alert( $("#shFdcgName").val() );  // jquery 방식
		alert( $("#shOption").val() );  // jquery 방식
		alert( $("#shValue").val() );  // jquery 방식 */
		
		
		/* alert( document.getElementById("shFdcgName").value );  // javascript 방식 */
	
	});
	
	
	
	
	
</script>	

</form>


