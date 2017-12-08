<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Division Credits</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">

</head>
<body>
	<h3>이수 구분별 학점 조회</h3>
	<table border="1" bgcolor="#81DAF5">
		<tr>
			<td width=100 align=center>교양필수</td>
			<td width=100 align=center>핵심교양</td>
			<td width=100 align=center>전공지정</td>
			<td width=100 align=center>전공기초</td>
			<td width=100 align=center>전공선택</td>
			<td width=100 align=center>총 학점</td>
		</tr>

		<c:set var="total_1" value="0" />
		<c:set var="total_2" value="0" />
		<c:set var="total_3" value="0" />
		<c:set var="total_4" value="0" />
		<c:set var="total_5" value="0" />
		<c:set var="total_All" value="0" />
		
		<c:forEach items="${takes}" var="take">
			<c:if test="${take.division == '교필'}">
				<c:set var="total_1" value="${total_1 + take.credits}" />
			</c:if>
			<c:if test="${take.division == '핵교'}">
				<c:set var="total_2" value="${total_2 + take.credits}" />
			</c:if>
			<c:if test="${take.division == '전지'}">
				<c:set var="total_3" value="${total_3 + take.credits}" />
			</c:if>
			<c:if test="${take.division == '전기'}">
				<c:set var="total_4" value="${total_4 + take.credits}" />
			</c:if>
			<c:if test="${take.division == '전선'}">
				<c:set var="total_5" value="${total_5 + take.credits}" />
			</c:if>
			
			<c:set var="total_All" value="${total_All + take.credits}" />
		</c:forEach>
		
		<tr bgcolor="ffffff">
			<td align=center>${total_1}</td>
			<td align=center>${total_2}</td>
			<td align=center>${total_3}</td>
			<td align=center>${total_4}</td>
			<td align=center>${total_5}</td>
			<td align=center>${total_All}</td>
		</tr>

	</table>
</body>
</html>