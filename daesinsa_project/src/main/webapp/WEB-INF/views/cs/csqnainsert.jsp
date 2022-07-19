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
<!-- XEICON CDN -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Common CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cs/qna.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<!-- ckediter cdn  -->
<script src="//cdn.ckeditor.com/4.19.0/basic/ckeditor.js"></script>

<title>상품문의</title>
</head>
<body>
<jsp:include page="../common/template_header.jsp"></jsp:include>

<div id="mainwrap">
<div class="sideandlist container">
 <!-- 사이드 메뉴 -->
        <div id="sidebar">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <div class="top">
            <h1 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
              고객센터</h1>
            </div>
          <ul class="list-unstyled ps-0 sidemenu">
            <li class="border-top my-3"></li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded d-grid gap-2" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
               공지사항
              </button>
              <div class="collapse " id="home-collapse" >
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li class="second_menu"><a href="${pageContext.request.contextPath}/cs/notice" class="link-dark rounded ">안내</a></li>
                  <li class="second_menu"><a href="${pageContext.request.contextPath}/cs/noticeEvent" class="link-dark rounded ">Event</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed " data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false"
              onclick="location.href='${pageContext.request.contextPath}/cs/qnaMain'">
                1:1문의<span>
              </button>
             
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false"
                      onclick="location.href='${pageContext.request.contextPath}/cs/faq'">
                자주 묻는 질문<span>
              </button>
              
            </li>
            <li class="border-top my-3"></li>
          </ul>
        </div>
        </div>
        <!-- 사이드메뉴 끝 -->
<form action="${pageContext.request.contextPath}/cs/qnainsert" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<table id="qna_review_form">


<tr>
<td>회원 ID</td>
<td>
 	<p>${username }</p></td>
</tr>
<tr>
<td>문의 유형 <span style="color: orange">&nbsp; *</span> </td>
<td>
 	<label for ="cs_type1"><input type="radio" name ="cs_type" id="cs_type1" value="1"> 구매/대여 </label>
    <label for ="cs_type2"><input type="radio" name ="cs_type" id="cs_type2" value="2"> 교환/환불/취소 </label>
    <label for ="cs_type3"><input type="radio" name ="cs_type" id="cs_type3" value="3"> 오류 </label>
    <label for ="cs_type4"><input type="radio" name ="cs_type" id="cs_type4" value="4"> 기타 </label>
    </td>
</tr>
<tr>
<td>문의 제목 <span style="color: orange">&nbsp; *</span> </td>
<td><input type="text"  id="cs_qtitle" name="cs_qtitle" class="form-control"
placeholder="제목을 입력해주세요" required="required"></td> 
</tr>


<tr>
<td>문의 내용<span style="color: orange">&nbsp; *</span></td>
<td colspan="2">
<textarea id="cs_qcontent" name="cs_qcontent" placeholder="내용을 입력해주세요">
</textarea></td>
</tr>
<tr>
<td colspan="2">
<label class="btn btn-label btn-sm" for="file-upload">
파일첨부
</label>
<input type="file" id="file-upload" name="cs_qfile" class="form-control" style="display:none">
<span id="fileName">파일을 선택해주세요. (최대 1장)</span>
</td>
</tr>
<tr>
<td colspan="2">
<label for="check_info"><input type="checkbox" required="required" name="check_info"
id="check_info"> 개인정보 수집 및 이용에 대한 동의(필수)</label></td>
</tr>

</table>
<div class="btn-insert-reset">
<button type="submit" class="btn btn-sm  btn-insert">등록하기</button>
<button type="button" class="btn btn-sm  btn-reset" onclick="history.back();">작성취소</button>
</div>
</form>
</div>
</div>


<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 파일첨부 버튼 - label 연결  -->
	<script>
		document.getElementById('file-upload').addEventListener('change',
				function() {
					var filename = document.getElementById('fileName');
					if (this.files[0] == undefined) {
						filename.innerText = '파일을 선택해주세요. (최대 1장)';
						return;
					}
					filename.innerText = this.files[0].name;
				});
	</script>

	<!-- ckediter api 스크립트 -->
	<script>
		CKEDITOR.replace('cs_qcontent', {
			height : '500',
			width: '600'
		});
	</script>

	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>