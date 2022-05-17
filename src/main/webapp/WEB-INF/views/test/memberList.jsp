<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%pageContext.setAttribute("br", "<br/>");%> 


<!DOCTYPE HTML>
<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">


<title>Cha html projects</title>
</head>

<style type="text/css">

</style>

<body>
<form id="formView" name="formView" method="post" action="/member/memberList">	

<div class="container-sm">
	<div class="row">
	    <c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<tr>
					<td class="text-center" colspan="9">No data!</td>
				</tr>	
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="item" varStatus="status">	
					<tr>
						<td><c:out value="${item.ifmmSeq }"/></td>
						<td><c:out value="${item.ifmmId}"/></td>
						<td><c:out value="${item.ifmmPassword}"/></td>
						<td><fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<br>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>	 
	</div>
</div>
</form>





<script type="text/javascript">


</script>



</body>
</htm1>





