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
<!-- rentinsert css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rent/rentinsert.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- 카카오 주소 api -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 날짜선택 datepicker -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- iamport.payment -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>Daesinsa - 상품대여</title>
</head>
<body>

	<jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">

		<div class="rental_terms">
			<div class="terms_box">
				<h1>Daesinsa 상품 대여</h1>
				<div class="text">
					<h1>대여 약관 소개</h1>
					<p>1.대여 일수 1 - 7 일 왕복 배송비 4000원 선결제</p>
					<p>2.대신사 자체 배송 시스템을 통하여 진행</p>
					<p>3.무조건 카드결제로만 결제 진행</p>
					<p>4.대여 반납 신청 예정일에 반납이 확인되지 않으면 연체료 부과</p>
					<p>5. 연체료 1일 1만원</p>
				</div>
				<div class="check container">
					<label for="check1"><input type="checkbox" id="check1"
						required> (필수) 해당 약관에 반드시 동의하여야 대여 신청이 진행됩니다. </label>
				</div>
			</div>


			<div class="rental_info">

				<hr>
				<div class="rental_product_info container">
					<table style="border: 1px solid black;">
						<tr>
							<td colspan="2">상품정보</td>
						</tr>
						<tr>
							<td>상품코드</td>
							<td><input type="text" value="${p_id }"></td>
						</tr>
						<tr>
							<td>상품명</td>
							<td><input type="text" value="${p_name }"></td>
						</tr>
						<tr>
							<td>1일 대여료</td>
							<td><input type="text" value="1500"></td>
						</tr>
					</table>
				</div>

				<hr>

				<div class="rental_user_info container">

					<table style="border: 1px solid black;">
						<tr>
							<td colspan="2">회원정보</td>
						</tr>
						<tr>
							<td>수령인</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>연락처</td>
							<td><input type="tel" pattern="(010)-\d{3,4}-\d{4}"
								title="형식 010-0000-0000"></td>
						</tr>
						<tr>
							<td>우편번호</td>
							<td><input type="text" name="zipcode" id="zipcode"  placeholder="우편번호" readonly>
								<button type="button" onclick="kakaopost();">우편번호 찾기</button></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="address" id="address" placeholder="주소">
							</td>
						</tr>
						
						<tr>
							<td>상세주소</td>
							<td><input type="text" name="detailadd" id="detailadd" placeholder="상세주소">
							</td>
						</tr>
					</table>
				</div>

				<hr>
				<div class="rental_select_date container">
					<table style="border: 1px solid black;">
						<tr>
							<td colspan="2">대여정보</td>
						</tr>
						<tr>
							<td>대여시작일</td>
							<td><input type="text" id="fromDate"></td>
						</tr>
						<tr>
							<td>대여종료일</td>
							<td><input type="text" id="endDate"></td>
						</tr>
						<tr>
							<td>대여일수</td>
							<td><input type="text"></td>
						</tr>
					</table>
					<div class="check">
						<label for="check2"><input type="checkbox" id="check2"
							required> (필수) 연체 시 부과되는 연체료에 대해 확인하였으며, 해당 상품을 대여하시겠습니까? </label>
					</div>

				</div>
			</div>
		</div>
			 <div class="rantal_submit">
		<!-- 대여하기 버튼 클릭 시 대여 테이블 insert / 상품 테이블 p_isrental =2로  update -->
        <button type="button" id="btn-retal" class="btn btn-retal">대여하기</button>
        </div>
	</div>

	<jsp:include page="../common/template_footer.jsp"></jsp:include>

	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- 카카오 우편번호 스크립트 -->
	<script>
		function kakaopost() {
			new daum.Postcode({
				oncomplete : function(data) {
					document.querySelector("#zipcode").value = data.zonecode;
					console.log(data.zonecode);
					document.querySelector("#address").value = data.address
					console.log(data.address);
					  document.querySelector("input[name=detailadd]").focus();//상세주소 입력 포커스
				}
			}).open();
		}
	</script>

	<!-- Datepicker 날짜 선택 스크립트 -->
	<script>
		$(function() {

			//오늘 날짜를 출력
			$("#today").text(new Date().toLocaleDateString());
			//시작일.
			$('#fromDate')
					.datepicker(
							{

								dateFormat : "yy-mm-dd",
								changeMonth : true,
								minDate : 0, //0으로 설정 시 오늘 날짜            
								onClose : function(selectedDate) {

									$("#endDate").datepicker("option",
											"minDate", selectedDate);
									var date = $(this).datepicker('getDate');//날짜 가져오기
									date.setDate(date.getDate() + 7); //최대 7일까지 설정
									$("#endDate").datepicker("option",
											"maxDate", date);
								}
							});

			//종료일
			$('#endDate').datepicker(
					{

						dateFormat : "yy-mm-dd",
						changeMonth : true,
						maxDate : 0,
						onClose : function(selectedDate) {
							// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
							$("#fromDate").datepicker("option", "maxDate",
									selectedDate);
						}
					});
		});
	</script>


	<!-- 날짜 값 구하기 -->
	<script>
		$(function() {
			//대여시작일
			$("#fromDate").datepicker();

			$("#fromDate").val();

			$("#fromDate").on("change", function() {
				var fromDate = $(this).val();
				console.log("시작일" + fromDate);
			});
			//대여종료일
			$("#endDate").datepicker();

			$("#endDate").val();

			$("#endDate").on("change", function() {
				var endDate = $(this).val();
				console.log("종료일" + endDate);
			});
		});
	</script>
	
	<!-- 결제 api 실행 -->
	<script>
	$('#btn-retal').click(
    function requestPay() {
        var pay = 1500;
	  IMP.init('imp81715131'); 
	  IMP.request_pay({
	    pg: 'inicis',
	    pay_method: 'card',
	    merchant_uid : 'merchant_'+new Date().getTime(),
	    name : 'Daesinsa 대여',
	    amount : pay
	  }, function (rsp) { // callback
	      if (rsp.success) {
	    	  msg = '결제에 성공하였습니다.';
              alert(msg);
	    	//성공시 수행하는 로직 
	      } else {
	    	    msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 수행하는 로직 
             
                
	      }
	  });
	})
	</script> 

</body>
</html>