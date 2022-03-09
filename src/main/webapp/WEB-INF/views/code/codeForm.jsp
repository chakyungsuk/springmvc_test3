<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action="/infra/code/codeInst">
	
	<select name="fdcdSeq">
		<c:forEach items="${list}" var="item" varStatus="status">
			<option value="<c:out value="${item.fdcgSeq}"/>"><c:out value="${item.fdcgName}"/>(<c:out value="${item.fdcgSeq}"/>)
		</c:forEach>
	</select>
	
	<input type="text" name="fdcdName" placeholder="이름">
	<input type="text" name="fdcdDelNy" placeholder="DelNy">
	<input type="text" name="fdcgSeq" placeholder="cgSeq">
	<input type="submit" value="제출">
</form>