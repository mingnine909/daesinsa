<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Common CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/shop/qnainsert.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- ckediter cdn  -->
<script src="//cdn.ckeditor.com/4.19.0/basic/ckeditor.js"></script>
<meta charset="UTF-8">
<title>문의 답변</title>
</head>
<body>

<div id="mainwrap">

<form action="${pageContext.request.contextPath}/shop/qnaanswer.do" method="post">
<input type="hidden" name="p_id" value="${pQna.p_id }">
<input type="hidden" name="pq_no" value="${pQna.pq_no }">
<input type="hidden" name="m_id" value="${pQna.m_id }">
<input type="hidden" name="pq_type" value="${pQna.pq_type }">
<table id="qna_review_form">
<tr>
<td>문의 제목</td>
<td><input type="text"  id="pq_title" name="pq_title" value="${pQna.pq_title}" required="required" readonly="readonly"></td> 
<td><input type="checkbox" name ="pq_closed" value="${pQna.pq_closed}" 
<c:if test="${pQna.pq_closed ==1}">checked="checked" </c:if> readonly="readonly">비밀글</td> 
</tr>

<tr>
<td>문의 유형</td>
<td colspan="2"><c:if test="${pQna.pq_type ==1}">상품</c:if>
<c:if test="${pQna.pq_type ==2}">배송</c:if>
<c:if test="${pQna.pq_type ==3}">대여</c:if>
<c:if test="${pQna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${pQna.pq_type ==5}">기타 </c:if> </td>
</tr>

<tr>
<td>문의 내용</td>
<td colspan="2">
<textarea id="pq_content_copy" name="pq_content_copy" >
${pq_content_copy}</textarea></td>

</tr>

<tr>
<td>문의 답변</td>
<td colspan="2">
<textarea id="pq_content" name="pq_content" >
</textarea></td>

</tr>

<tr>
<td colspan="2"><button type="submit" class="btn btn-primary btn-insert" readonly="readonly">답변</button></td>
</tr>
</table>
</form>
</div>

	<!-- ckediter api 스크립트 -->
	<script>
		CKEDITOR.replace('pq_content_copy', {
			height : '200',
			width: '500'
		});
		
		CKEDITOR.replace('pq_content', {
			height : '100',
			width: '500'
		});
		
		
	</script>
	
</body>
</html>