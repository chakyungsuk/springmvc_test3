<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

		
		
		<c:out value="${item.ifmmSeq}"/> | <c:out value="${item.ifmmId}"/> | <c:out value="${item.ifmmDelNy}"/> | <c:out value="${item.ifmmPassword}"/>
		| <c:out value="${item.ifmmSaved}"/> <br>
		
		<a href ="/infra/member/memberForm2?ifmmSeq=${item.ifmmSeq}">수정</a>
		<a href ="/infra/member/memberForm?ifmmSeq=${item.ifmmSeq}">등록</a>
		<a href ="http://localhost:8090/infra/member/memberList">목록</a>
