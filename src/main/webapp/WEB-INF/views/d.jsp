<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2016-2</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h3>2016년도 2학기</h3>
	<table border="1" bgcolor="#81DAF5">
		<tr>
			<td width=110 align=center>교과코드</td>
			<td width=250 align=center>교과목명</td>
			<td width=60 align=center>구분</td>
			<td width=60 align=center>학점</td>
		</tr>

		<c:forEach items="${takes}" var="take">
			<c:if test="${take.year == '2016' && take.semester == '2' }">
				<tr bgcolor="ffffff">
					<td align=center>${take.course_id}</td>
					<td align=center>${take.course_name}</td>
					<td align=center>${take.division}</td>
					<td align=center>${take.credits}</td>
				</tr>
			</c:if>
		</c:forEach>
		</table>
</body>
</html>