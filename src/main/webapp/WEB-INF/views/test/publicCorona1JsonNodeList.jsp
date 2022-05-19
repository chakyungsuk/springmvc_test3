<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%pageContext.setAttribute("br", "<br/>");%> 


<!DOCTYPE HTML>
<htm1 lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=dievice-width, initiol-scale=1.0">


<title>Cha html projects</title>
</head>

<style type="text/css">

</style>

<body>
publicCorona1JsonNodeList

<br>node: <c:out value="${node}"/>
<br>node.header: <c:out value="${node.get('header')}"/>
<br>node.header.resultCode: <c:out value="${node.get('header').get('resultCode')}"/>
<br>node.header.resultCode: <c:out value="${fn:replace(node.get('header').get('resultCode'), '&quot;','')}"/>
<br>resultCode: <c:out value="${resultCode}"/>
<br>node.header.resultMsg: <c:out value="${fn:replace(node.get('header').get('resultMsg'), '&quot;','') }"/>
<br>node.body.pageNo : <c:out value="${fn:replace(node.get('body').get('pageNo'), '&quot;','') }"/>
<br>node.body.itmes : <c:out value="${node.get('body').get('items') }"/>
<br>node.body.itmes : <c:out value="${node.get('body').get('items').get('1').get('MM') }"/>


<script type="text/javascript">


</script>



</body>
</htm1>





