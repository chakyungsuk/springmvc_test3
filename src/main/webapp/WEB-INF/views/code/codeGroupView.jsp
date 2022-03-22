<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

		
		
		<c:out value="${item.fdcgSeq}"/> | <c:out value="${item.fdcgName}"/> | <c:out value="${item.fdcgNameEng}"/>| <c:out value="${item.fdcdOrder}"/>
		<c:out value="${item.fdcgDelNy}"/> <br>
		
		<a href ="/code/codeGroupForm2?fdcgSeq=${item.fdcgSeq}">수정</a>
		<a href ="/code/codeGroupForm?fdcgSeq=${item.fdcgSeq}">등록</a>
		<a href ="/code/codeGroupList?&shOption=<c:out value="${vo.shOption }"/>&shValue=<c:out value="${vo.shValue }"/>">목록</a>
