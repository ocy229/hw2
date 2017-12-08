<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Semeter Credits</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h3>학기별 이수 학점 조회</h3>
	<table border="1" bgcolor="#81DAF5">
		<tr>
			<td width=110 align=center>수강년도</td>
			<td width=80 align=center>학기</td>
			<td width=110 align=center>이수학점</td>
			<td width=110 align=center>상세보기</td>
		</tr>


		<c:set var="a" value="0" />
		<c:set var="b" value="0" />
		<c:set var="c" value="0" />
		<c:set var="d" value="0" />
		<c:set var="e" value="0" />

		<c:forEach items="${takes}" var="take">
			<c:if test="${take.year == '2015' && take.semester == '1' }">
				<c:set var="a" value="${a + take.credits}" />
			</c:if>
			<c:if test="${take.year == '2015' && take.semester == '2' }">
				<c:set var="b" value="${b + take.credits}" />
			</c:if>
			<c:if test="${take.year == '2016' && take.semester == '1' }">
				<c:set var="c" value="${c + take.credits}" />
			</c:if>
			<c:if test="${take.year == '2016' && take.semester == '2' }">
				<c:set var="d" value="${d + take.credits}" />
			</c:if>
			<c:if test="${take.year == '2017' && take.semester == '1' }">
				<c:set var="e" value="${e + take.credits}" />
			</c:if> 
		</c:forEach>
		
			<tr bgcolor="ffffff">
				<td align=center>2015</td>
				<td align=center>1</td>
				<td align=center>${a}</td>
				<td align=center><a href="${pageContext.request.contextPath}/a">링크</a></td>
			</tr>
			<tr bgcolor="ffffff">
				<td align=center>2015</td>
				<td align=center>2</td>
				<td align=center>${b}</td>
				<td align=center><a href="${pageContext.request.contextPath}/b">링크</a></td>
			</tr>
			<tr bgcolor="ffffff">
				<td align=center>2016</td>
				<td align=center>1</td>
				<td align=center>${c}</td>
				<td align=center><a href="${pageContext.request.contextPath}/c">링크</a></td>
			</tr>
			<tr bgcolor="ffffff">
				<td align=center>2016</td>
				<td align=center>2</td>
				<td align=center>${d}</td>
				<td align=center><a href="${pageContext.request.contextPath}/d">링크</a></td>
			</tr>
			<tr bgcolor="ffffff">
				<td align=center>2017</td>
				<td align=center>1</td>
				<td align=center>${e}</td>
				<td align=center><a href="${pageContext.request.contextPath}/e">링크</a></td>
			</tr>
	</table>

</body>
</html>