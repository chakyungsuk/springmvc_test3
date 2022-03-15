<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form id="" name="" method="get" action="/code/codeList">
<select id="" name="shFdcgSeq">
	<option value="">::코드그룹::
		<c:forEach items="${listcodeGroup}" var="item" varStatus="status">
	<option value="<c:out value="${item.fdcgSeq}"/>"><c:out value="${item.fdcgName}"/>
		</c:forEach>
</select>
<input type="text" name="shFdcdName">
<input type="submit" name="search">
<br>
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.fdcdSeq}"/> | <a href="/code/codeView?fdcdSeq=${item.fdcdSeq}"><c:out value="${item.fdcdName}"/></a> 
		| <c:out value="${item.fdcdOrder}"/> | <c:out value="${item.fdcdDelNy}"/> <br>

		</c:forEach>
	</c:otherwise>
</c:choose>	 


</form>