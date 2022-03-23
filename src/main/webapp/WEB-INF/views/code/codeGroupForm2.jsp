<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action="/code/codeGroupUpdt">

	<input type="hidden" name="fdcgSeq" value="<c:out value="${item.fdcgSeq}"/>">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
	<input type="hidden" name="shFdcgDelNy" value="<c:out value="${vo.shFdcgDelNy }"/>">
	<input type="hidden" name="shFdcgName" value="<c:out value="${vo.shFdcgName }"/>">
	<input type="hidden" name="">
	
	<input type="text" name="fdcgName" placeholder="아이디" value="<c:out value="${item.fdcgName}"/>">
	<input type="submit" value="제출">
</form>