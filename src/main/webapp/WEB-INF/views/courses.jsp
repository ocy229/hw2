<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Check Course Registration</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h3>수강 신청 조회</h3>
	<table border="1" bgcolor="#81DAF5">
		<tr>
			<td width=110 align=center>수강년도</td>
			<td width=80 align=center>학기</td>
			<td width=110 align=center>교과코드</td>
			<td width=110 align=center>교과목명</td>
		</tr>
		
		<c:forEach items="${takes}" var="take">
			<c:if test="${take.year == '2018' && take.semester == '1' }">
			<tr bgcolor="ffffff">
				<td align=center>${take.year}</td>
				<td align=center>${take.semester}</td>
				<td align=center>${take.course_id}</td>
				<td align=center>${take.course_name}</td>
			</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>