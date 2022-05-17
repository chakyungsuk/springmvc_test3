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
		<div class="col-12 col-sm-12 col-lg-2">
			<c:out value="${item.ifmmSeq }"/>
 		</div>
		<div class="col-12 col-sm-12 col-lg-2">
			<c:out value="${item.ifmmName }"/>
		</div>
	</div>
</div>

</form>





<script type="text/javascript">


</script>



</body>
</htm1>





