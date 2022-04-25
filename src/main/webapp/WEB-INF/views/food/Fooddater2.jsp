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

</head>

<body class="text-center">
<div>
	<c:forEach items="${step }" var="step" varStatus="status">
			<c:set var="i" value="${status.index + 1 }"/>
			<div><h3>Step ${i }</h3></div>
			<div id="stepDiv1" class="view_step_cont media step1"><div id="stepdescr1" class="media-body"><c:out value="${step.fdspStep}"/></div>
			</div>
			<hr>
	</c:forEach> 
</div>

</body>

</htm1>

