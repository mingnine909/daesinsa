<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- ckediter cdn  -->
<script src="//cdn.ckeditor.com/4.19.0/basic/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/daesinsa.js"></script>
<title>상품문의</title>
</head>
<body>


<div id="mainwrap">
<form id="frmQna">
<input type="hidden" name="p_id" value="${p_id }">
<table id="qna_review_form">
<tr>
<td>문의 제목 <span style="color: orange"> *</span> </td>
<td><input type="text"  id="pq_title" name="pq_title" class="form-control" placeholder="제목을 입력해주세요" required="required"></td> 
<td><input type="checkbox" name ="pq_closed" value="1" checked="checked">비밀글</td> 
</tr>

<tr>
<td>문의 유형 <span style="color: orange"> *</span> </td>
<td colspan="2">
 	<label for ="pQna1"><input type="radio" name ="pq_type" id="pQna1" value="1"> 상품 </label>
    <label for ="pQna2"><input type="radio" name ="pq_type" id="pQna2" value="2"> 배송 </label>
    <label for ="pQna3"><input type="radio" name ="pq_type" id="pQna3" value="3"> 대여 </label>
    <label for ="pQna4"><input type="radio" name ="pq_type" id="pQna4" value="4"> 교환/환불/취소 </label>
    <label for ="pQna5"><input type="radio" name ="pq_type" id="pQna5" value="5"> 기타</label>
    </td>
</tr>

<tr>
<td>문의 내용 <span style="color: orange">*</span> </td>
<td colspan="2">
<textarea id="pq_content" name="pq_content"  required="required" placeholder="내용을 입력해주세요">
</textarea></td>

</tr>

<tr>
<td colspan="2"><p><span style="color: orange">*</span> 표시된 항목은 필수 입력사항입니다.</p></td>
</tr>

<tr><!-- ajax로 코드 바꾸기  -->
<td colspan="2"><button type="button" class="btn btn-primary btn-insert" onclick="insertQna();">등록하기</button></td>
</tr>
</table>
</form>
</div>
<!-- 등록하기 -->
<script>
	function insertQna() {
		//action="${pageContext.request.contextPath}/shop/qnainsert.do" method="post"
		for (instance in CKEDITOR.instances) {
			CKEDITOR.instances[instance].updateElement();
		}
		
		var frmdata = $("#frmQna").serialize();
		$.ajax({
			url : "${pageContext.request.contextPath}/shop/qnainsert.do",
			type : "post",
			data : frmdata,
			success : CloseAndRefresh,
			error : ajaxError
		});
	}
</script>

	<script>
function CloseAndRefresh(result){
	if(result>0){
		alert("문의글이 등록되었습니다.");	
	}else {
	alert("실패했습니다. 다시 등록해주세요");
	}
	window.close();
	if(window.opener && !window.opener.closed){
		window.opener.location.reload();
	}
	}	
		
</script>

	<!-- ckediter api 스크립트 -->
	<script>
		CKEDITOR.replace('pq_content', {
			height : '300',
			width: '500'
		});
	</script>
	
	
<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>