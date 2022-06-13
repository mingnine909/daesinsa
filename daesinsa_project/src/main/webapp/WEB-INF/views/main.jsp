<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href="<%=request.getContextPath() %>/resources/css/reset.css">
<title>Daesinsa 대신사</title>
</head>
<body>
<h1>
	Daesinsa Main  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<button type="button" onclick="location.href='<%=request.getContextPath() %>/member/insert'">회원가입</button>
</body>
</html>