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
		
		
			<div class="content_subject"><span>장바구니</span></div>
			<!-- 장바구니 리스트 -->
			<div class="content_middle_section"></div>
			<!-- 장바구니 가격 합계 -->
			<!-- cartInfo -->
			<div class="content_totalCount_section">
				
				<table class="subject_table">
					<caption>표 제목 부분</caption>
					<tbody>

						<tr>
							<th class="td_width_1"></th>
							<th class="td_width_2"></th>
							<th class="td_width_3">상품명</th>
							<th class="td_width_4">가격</th>
							<th class="td_width_4">수량</th>
							<th class="td_width_4">합계</th>
							<th class="td_width_4">삭제</th>
						</tr>
					</tbody>
				</table>
				<table class="cart_table">
					<caption>표 내용 부분</caption>
					<tbody>
						<c:forEach items="${shopbasket}" var="ci">
							<tr>
								<td class="td_width_1">
								<input type="hidden" class="individual_bookPrice_input" value="${ci.itemPrice}">
			<input type="hidden" class="individual_bookCount_input" value="${ci.itemCount}">
			<input type="hidden" class="individual_totalPrice_input" value="${ci.salePrice * ci.itemCount}">
			<input type="hidden" class="individual_totalPoint_input" value="${ci.totalPoint}"></td>
								<td class="td_width_2"></td>
								<td class="td_width_3">${ci.itemName}</td>
								<td class="td_width_4 price_td">
									<del>정가 : <fmt:formatNumber value="${ci.itemPrice}" pattern="#,### 원" /></del><br>
									판매가 : <span class="red_color"><fmt:formatNumber value="${ci.salePrice}" pattern="#,### 원" /></span><br>
								</td>
								<td class="td_width_4 table_text_align_center">
									<div class="table_text_align_center quantity_div">
										<input type="text" value="${ci.bookCount}" class="quantity_input">	
										<button class="quantity_btn plus_btn">+</button>
										<button class="quantity_btn minus_btn">-</button>
									</div>
									<a class="quantity_modify_btn">변경</a>
								</td>
								<td class="td_width_4 table_text_align_center">
									<fmt:formatNumber value="${ci.salePrice * ci.itemCount}" pattern="#,### 원" />
								</td>
								<td class="td_width_4 table_text_align_center delete_btn"><button>삭제</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<table class="list_table">
				</table>
			</div>
			<!-- 가격 종합 -->
			<div class="content_total_section">
				<div class="total_wrap">
					<table>
						<tr>
							<td>
								<table>
									<tr>
										<td>총 상품 가격</td>
										<td>
											<span class="totalPrice_span"></span> 원
										</td>
									</tr>
									<tr>
										<td>배송비</td>
										<td>
											<span class="delivery_price">무료</span>
										</td>
									</tr>									
									<tr>
										<td>총 주문 상품수</td>
										<td><span class="totalKind_span"></span>종 <span class="totalCount_span"></span></td>
									</tr>
								</table>
							</td>
							<td>
								<table>
									<tr>
										<td></td>
										<td></td>
									</tr>
								</table>							
							</td>
						</tr>
					</table>
					<div class="boundary_div">구분선</div>
					<table>
						<tr>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
												<strong>총 결제 예상 금액</strong>
											</td>
											<td>
												<span class="finalTotalPrice_span">70000</span> 원
											</td>
										</tr>
									</tbody>
								</table>
							</td>
							<td>
								<table>
									<tbody>
										<tr>
											<td>
					
											
											</td>
											<td>
								
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
	</div>
<!-- 	<table>
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





	</table> -->





<script>
$(document).ready(function(){
	/* 종합 정보 섹션 정보 삽입 */
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let totalKind = 0;				// 총 종류
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
	
	$(".cart_info_td").each(function(index, element){
		
		// 총 가격
		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		// 총 갯수
		totalCount += parseInt($(element).find(".individual_itemCount_input").val());
		// 총 종류
		totalKind += 1;

	});	
	
	
	
	/* 최종 가격 */
	finalTotalPrice = totalPrice + deliveryPrice;
	
	/* 값 삽입 */
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocaleString());
	// 총 갯수
	$(".totalCount_span").text(totalCount);
	// 총 종류
	$(".totalKind_span").text(totalKind);
	// 최종 가격(총 가격 )
	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
	
});
</script>





	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
<!-- <script type="text/javascript">
		let shopbasket = {
    totalCount: 0, 
    totalPrice: 0,

    },
    <!-- 개별 수량 변경 -->
    changePNum: function (pos) {
        var item = document.querySelector('input[name=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
        
        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
        <!-- AJAX 업데이트 전송 -->

       <!--  전송 처리 결과가 성공이면  -->   
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
        event.target.parentElement.parentElement.parentElement.remove();
        this.reCalc();
        this.updateUI();
    }
}
		</script>
 -->
</body>
</html>