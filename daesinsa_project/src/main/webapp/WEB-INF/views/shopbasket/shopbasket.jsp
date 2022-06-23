<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<!-- í°í¸ -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/shopbasket.css">

<title>장바구니</title>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>

<div class="shopbasket_title">
		<h2 class="shopbasket_title_content">Shopbasket</h2>
	</div>
	<table>
		<thead>
			<tr>
				<th>전체 x개</th>
				<th scope="col" style="cursor: pointer;"><input type="checkbox"
					class="check_all" id="check_all" checked></th>
				<th scope="col">상품명</th>
				<th scope="col">가격</th>
				<th scope="col">수량</th>
				<th scope="col">배송</th>
			</tr>
		</thead>

		<tbody>
			<tr class="shopbasket_list_no">
				<td>1</td>
				<td><input type="checkbox" class="disabled_shopbasket"
					name="shopbasket_no"></td>
				<td>
					<div class="shopbasket_img">
						<a href=""></a>
					</div>
					<div class="shopbasket_info">나이키 모자</div>
				</td>
				<td>15,800원</td>
				<td>1개</td>
				<td>배송비무료</td>
			</tr>
						<tr class="shopbasket_list_no">
				<td>1</td>
				<td><input type="checkbox" class="disabled_shopbasket"
					name="shopbasket_no"></td>
				<td>
					<div class="shopbasket_img">
						<a href=""></a>
					</div>
					<div class="shopbasket_info">나이키 모자</div>
				</td>
				<td>15,800원</td>
				<td>1개</td>
				<td>배송비무료</td>
			</tr>
						<tr class="shopbasket_list_no">
				<td>1</td>
				<td><input type="checkbox" class="disabled_shopbasket"
					name="shopbasket_no"></td>
				<td>
					<div class="shopbasket_img">
						<a href=""></a>
					</div>
					<div class="shopbasket_info">나이키 모자</div>
				</td>
				<td>15,800원</td>
				<td>1개</td>
				<td>배송비무료</td>
			</tr>
			
		</tbody>
	</table>

	<div class="shopbasket_delete-btn">
		<button onclick="">선택삭제</button>
	</div>
    <div class="guide_text">
        환불 어쩌꾸<br>
        배송 저쩌구<br>
        대여 어쩌구<br>
        연체 저쩌구<br>
    </div>





	</table>













	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>