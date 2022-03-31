
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Signin Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<!-- Bootstrap core CSS -->
<link href="/resources/xdmin/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->

<title>Cha html projects</title>

<style>

	.container {
		text-align: center;
		margin-top: 200px;
	}

</style>

</head>

<body>
<form id="indexView" name="indexView" method="post" action="/index/indexView">

<div class="container">
	<div class="row">
		<div class="">sessSeq: <c:out value="${sessSeq }"/><br></div>
		<div class="">sessName: <c:out value="${sessName }"/><br></div>
		<div class="col-12" style="margin-bottom: 20px;">sessId: <c:out value="${sessId }"/><br></div>
		<c:if test="${not empty sessSeq}">
			<button type="button" class="btn btn-danger" id="btnLogout"><i class="bi bi-radioactive"></i></button>
		</c:if>
	</div>
	<p class="mt-5 mb-3" style="color: gray;">&copy; Happy Food 2022 ~</p>
</div>
</form>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

<script type="text/javascript">
		
$("#btnLogout").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/member/memberLogin";
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
	
	

</script>

</body>

</htm1>

