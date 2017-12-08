<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Course Registration</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<form class="form" method="post" action="${pageContext.request.contextPath}/doreg">

		<h3>수강 신청</h3>
		<p>2018년 1학기에 신청할 예상 교과 코드와 교과목명을 입력 하세요<br /></p>
		<table>
			<tr>
				<td class="label">COURSE ID : </td>
				<td class="label"> <input type="text" name="course_id" /> </td>
			</tr>
			<tr>
				<td class="label">COURSE NAME : </td>
				<td class="label"> <input type="text" name="course_name" /> </td>
			</tr>
			<tr>
				<td></td>
				<td class="label"> <input type="submit" value="신청하기" /> </td>
			</tr>
		</table>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</body>
</html>