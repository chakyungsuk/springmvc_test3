<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

		
		
		<c:out value="${item.fdcdSeq}"/> | <c:out value="${item.fdcdName}"/> | <c:out value="${item.fdcdOrder}"/> | <c:out value="${item.fdcdDelNy}"/> <br>
		
		<a href ="/code/codeForm2?fdcdSeq=${item.fdcdSeq}">수정</a>
		<a href ="/code/codeForm?fdcdSeq=${item.fdcdSeq}">등록</a>
