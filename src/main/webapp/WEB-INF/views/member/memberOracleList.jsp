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

<form id="formList" name="formList" method="post" action="/member/memberOracleList">	


<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<!-- <script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>


<div class="container">
	<c:forEach items="${list}" var="item" varStatus="status">
		<tr>
			<td><c:out value="${item.ifmmSeq }"/></td>
			<td><c:out value="${item.ifmmId }"/></td>
			<td><c:out value="${item.ifmmName }"/></td>
			<%-- <td><c:out value="${item.ifmmAge }"/></td> --%>
			<td><c:out value="${item.ifmmDob }"/></td>
			<br>
		</tr>
	</c:forEach>
	
</div>

<script>

</script>
	
</form>
</body>
</htm1>

