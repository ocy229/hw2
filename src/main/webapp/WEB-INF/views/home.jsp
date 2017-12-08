<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body style="font-family: 'Open Sans', sans-serif;">

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>안녕하세요 '${pageContext.request.userPrincipal.name}'님</h2>
	</c:if>
	<table>
		<tr><td><a href="${pageContext.request.contextPath}/takes">수강 교과목 상세 조회</a></td></tr>
		<tr><td><a href="${pageContext.request.contextPath}/sem_credits">학기별 이수 학점 조회</a></td></tr>
		<tr><td><a href="${pageContext.request.contextPath}/div_credits">이수 구분별 학점 조회</a></td></tr>
		<tr><td><a href="${pageContext.request.contextPath}/course_reg">수강 신청</a></td></tr>
		<tr><td><a href="${pageContext.request.contextPath}/courses">수강 신청 조회</a></td></tr>
		<tr><td>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<a href="javascript:document.getElementById('logout').submit()">LOGOUT</a>
		</c:if>
		</td>
		</tr>
		
	</table>
	
	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

</body>
</html>