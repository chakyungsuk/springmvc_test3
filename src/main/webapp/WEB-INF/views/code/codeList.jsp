<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id="" name="" method="get" action="/code/codeList">

<select id="shFdcgSeq" name="shFdcgSeq" >
	<option value="">::코드그룹::
		<c:forEach items="${listcodeGroup}" var="item" varStatus="status">
	<option value="<c:out value="${item.fdcgSeq}"/>"><c:out value="${item.fdcgName}"/>
		</c:forEach>
</select>
||
<select name="shFdcdDelNy" id="shFdcdDelNy">
	<option value="">::삭제여부::</option>
	<option value="1" <c:if test="${vo.shFdcdDelNy eq 1 }">selected</c:if>>Y
	<option value="0" <c:if test="${vo.shFdcdDelNy eq 0 }">selected</c:if>>N
</select>
||
<input type="text" name="shFdcdName" id="shFdcdName" value="${vo.shFdcdName }"/>
<input type="submit" name="search" id="btnSubmit">
<br>
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.fdcdSeq}"/> | <a href="/code/codeView?fdcdSeq=${item.fdcdSeq}"><c:out value="${item.fdcdName}"/></a> 
		| <c:out value="${item.fdcdOrder}"/> | <c:out value="${item.fdcdDelNy}"/> <br>

		</c:forEach>
	</c:otherwise>
</c:choose>	 

<Br>

<c:out value="${vo.startPage}" />

<!-- Page S -->
<nav aria-label="...">
  <ul class="pagination">
  
<!-- Previous -->
<c:if test="${vo.startPage gt vo.pageNumToShow}">
	<li class="page-item"><a class="page-link" href="/code/codeList?thisPage=${vo.startPage - 1}">Previous</a></li>
</c:if>

<!-- Page -->    
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">  
                <li class="page-item active"><a class="page-link" href="/code/codeList?thisPage=${i.index}">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="/code/codeList?thisPage=${i.index}">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>  

<!-- Next -->
<c:if test="${vo.endPage ne vo.totalPages}">                
	<li class="page-item"><a class="page-link" href="/code/codeList?thisPage=${vo.endPage + 1}">Next</a></li>
</c:if>

<!-- Page E -->
  </ul>
</nav>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>



<script>

	$("#btnSubmit").on("click", function(){
	
		if(!checkNull($("#shFdcgSeq"),$("#shFdcgSeq").val(), "목록 확인")) return false;
		if(!checkNull($("#shFdcdDelNy"),$("#shFdcdDelNy").val(), "삭제여부확인")) return false;
		if(!checkNull($("#shFdcdName"),$("#shFdcdName").val(), "검색어 확인")) return false;
		
	});

</script>


</form>