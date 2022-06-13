<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	[[${msg }]]
	
	<form action="${pageContext.request.contextPath}/member/insert"
		method="post">
		<table border="1px">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="m_id" required></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="m_pwd" required></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="m_name" required></td>
			</tr>
				<tr>
				<th>이메일</th>
				<td><input type="email" name="m_email" required></td>
			</tr>
				<tr>
				<th>핸드폰</th>
				<td><input type="text" name="m_phone" required></td>
			</tr>
				<tr>
				<th>주소</th>
				<td><input type="text" name="m_adrs" required></td>
			</tr>
				<tr>
				<th>성별</th>
				<td><input type="text" name="m_gender" required></td>
			</tr>
				<tr>
				<th>생년월일</th>
				<td><input type="text" name="m_bdate" required></td>
			</tr>
		</table>

		<button type="submit">회원가입</button>
	</form>

</body>
</html>