<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.bundle.min.js"></script>
<script src="/resources/xdmin/js/bootstrap.min.js"></script>

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/navbars/">
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">


<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/xdmin/css/navbar.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">



<title>Cha html projects</title>

<style type="text/css">
	body {
		width: 100%;
		/* background-image: url('../../../images/user_image/backC.jpg'); */
		background-size: cover;
		background-color: gray;
		background-repeat : no-repeat; 
	}
/* 	.album {
		background-image: url('../../../images/user_image/backC.jpg');
		background-size: cover;
	} */
    .input {
		text-align:center;
		justify-content:center;
		margin-bottom: 20px;
   	}
   	p {
   		text-align: left;
   		margin-left: 20px;
   	}
   	h5 {
   		text-align: left;
   	}
   	.view_step_cont {
   		margin-top: 20px;
	}
	h3 {
		margin-top: 20px;
	}
</style>

</head>

<body class="text-center">

<br><br>
<div class="container">
	<c:forEach items="${foodimage }" var="foodimage" varStatus="status">
		<c:if test="${foodimage.type eq 1}">
			<div class="row">
				<div class="col-6">
					<c:set var="i" value="${status.index}"/>
					<div><h3>Step ${i }</h3></div><br><br><br>
					<div id="stepdescr1" class="media-body"><c:out value="${step[status.index - 1].fdspStep}"/></div>
				</div>
				<div class="col-6">
					<img src="<c:out value="${foodimage.path}"/><c:out value="${foodimage.uuidName}"/>" style="width: 600px; height: 450px;">
				</div>				
			</div>
			<hr>
		</c:if>			
	</c:forEach> 
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/xdmin/js/sidebars.js"></script>
	

<script type="text/javascript">

	

</script>





</body>

</htm1>

