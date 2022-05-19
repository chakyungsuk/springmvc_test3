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

		<br>aaa: <c:out value="${resultCode}"/>
		<br>aaa: <c:out value="${resultMsg}"/>
		<br>aaa: <c:out value="${pageNo}"/>
		<br>aaa: <c:out value="${totalCount}"/>
		<br>aaa: <c:out value="${numOfRows}"/>
		<br>aaa: <c:out value="${items}"/>
		<br>
		<c:forEach items="${items}" var="item" varStatus="status">
			<c:out value="${item.YYYY}"/>
			<c:out value="${item.KIT_PROD_QTY}"/>
			<c:out value="${item.KIT_EXPRT_QTY}"/>
			<c:out value="${item.KIT_STOCK_QTY}"/>
		</c:forEach>

	</div>
</div>
</form>





<script type="text/javascript">


</script>



</body>
</htm1>





