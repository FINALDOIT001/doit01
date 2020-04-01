<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

	<jsp:forward page="main.go"/>
	<!-- 위 방식이 아래 방식보다 좋아보이는 이유 : 폴더경로를 보여주지 않으니까 좋을 것 같다......??????????? -->
	<%-- <jsp:forward page="/WEB-INF/views/common/main.jsp"/> --%>
 
</body>
</html>