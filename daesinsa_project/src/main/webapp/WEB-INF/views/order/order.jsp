
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
<link	href="${pageContext.request.contextPath}/resources/css/order/order.css" rel="stylesheet">
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
<title>Daesinsa - 주문하기</title>
</head>
<body>

	<jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">

		<div class="rental_terms">
			<div class="terms_box">
				<h1>주문하기</h1>


			</div>



				<hr>
	<div class="orderGoods_div">
		<!-- 상품 종류 -->
		<div class="goods_kind_div">
			주문상품 <span class="goods_kind_div_kind"></span>종 <span class="goods_kind_div_count"></span>개
		</div>
		<!-- 상품 테이블 -->
		<table class="goods_subject_table">
			<colgroup>
				<col width="15%">
				<col width="45%">
				<col width="40%">
			</colgroup>
			<tbody>
				<tr>
					<th>이미지</th>
					<th>상품 정보</th>
					<th>판매가</th>
				</tr>
			</tbody>
		</table>
		<table class="goods_table">
			<colgroup>
				<col width="15%">
				<col width="45%">
				<col width="40%">
			</colgroup>					
			<tbody>
				<c:forEach items="${orderList}" var="ol">
					<tr>
						<td>
							<!-- 이미지 <td>-->
						</td>
						<td>${ol.p_name}</td>
						<td class="goods_table_price_td">
							<fmt:formatNumber value="${ol.p_price}" pattern="#,### 원" /> | 수량 ${ol.bookCount}개
							<br><fmt:formatNumber value="${ol.totalPrice}" pattern="#,### 원" />
							<input type="hidden" class="individual_bookPrice_input" value="${ol.p_price}">
							<input type="hidden" class="individual_bookCount_input" value="${ol.sb_amount}">
							<input type="hidden" class="individual_totalPrice_input" value="${ol.p_price * ol.sb_amount}">
							<input type="hidden" class="individual_bookId_input" value="${ol.p_id}">
						</td>
					</tr>							
				</c:forEach>

			</tbody>
		</table>
	</div>

				<hr>
			<div class="rental_info">

				<div class="rental_user_info ">

					<table style="border: 1px solid black;" class="user_table">
						<tr>
							<td colspan="2" class="table_title">회원정보</td>
						</tr>
						<tr>
							<td class="table_info">수령인</td>
							<td><input type="text" id="order_member" class="form-control" placeholder="수령인 이름을 입력해주세요"></td>
						</tr>
						<tr>
							<td class="table_info">연락처</td>
							<td><input type="tel" id="order_member_tel" class="form-control" onkeyPress="javascript:checkInputNum();"
							placeholder="수령인 연락처를 입력해주세요"></td>
						</tr>
						<tr>
							<td class="table_info">우편번호</td>
							<td><input type="text" name="zipcode" id="zipcode" class="form-control" placeholder="우편번호" readonly>
								<button type="button" class="btn btn-sm" onclick="kakaopost();">우편번호 찾기</button></td>
						</tr>
						<tr>
							<td class="table_info">주소</td>
							<td><input type="text" name="address" class="form-control" id="address" placeholder="주소">
							</td>
						</tr>
						
						<tr>
							<td class="table_info">상세주소</td>
							<td><input type="text" name="detailadd" class="form-control" id="detailadd" placeholder="상세주소">
							</td>
						</tr>
					</table>
				</div>

				<hr>
		
		
		
		
		
		
		
		
		
		
		



			</div>
		</div>
			 <div class="rantal_submit">
		<!-- 대여하기 버튼 클릭 시 대여 테이블 insert / 상품 테이블 p_isrental =2로  update -->
		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button type="button" id="btn-retal" class="btn btn-retal">결제하기</button>
       <!-- <button type="button" id="btn-checkd" class="btn btn-checkd">확인용</button> -->
        </div>
	</div>

	<jsp:include page="../common/template_footer.jsp"></jsp:include>

	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		
	<!-- 전화번호 정규표현식 -->
	<script>
	var phone = $('#rent_member_tel').val();
	var phoneVal = phone.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
	
	 $("#rent_member_tel").text(phoneVal);
	 console.log(phoneVal);
	</script>
	
	<!-- 숫자만 입력 가능하게 제한 -->
	<script>
  	function checkInputNum(){
      if ((event.keyCode < 48) || (event.keyCode > 57)){
          event.returnValue = false;
      }
 	 }
	</script>


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

	
	<!-- 결제 api 실행 --> 
	<script>
	$('#btn-retal').click(
    function requestPay() {
    	/* 값 확인  */
		var daysVal = $('#rentalDays').val();
	    var price = 1500;
	    var dCharge = 4000;
	    var priceVal = daysVal*price+dCharge;
    	console.log("대여일수"+daysVal);
    	
    	/* 결제 실행 하기 전에 체크해야 할 값 체크 */
    	 if(!$("input:checked[id='check1']").is(":checked")){
   	     alert('(필수)해당 약관에 반드시 동의하여야 합니다.'); 
   	     return false;
   	    } else if(!$("input:checked[id='check2']").is(":checked")){
   	     alert('(필수)연체 시 부과되는 연체료에 대해 동의하여야 합니다.'); 
   	     return false;	
   	    } else if($('#rent_member').val()=="" ||  $('#rent_member_tel').val()=="")
   	    {
   	     alert('수령인 정보를 입력해주세요.'); 	
   	  	$('#rent_member').focus();
   	     return false;
   	    } else if($('#zipcode').val()=="" || $('#detailadd').val()=="")
   	    {
      	     alert('수령인 주소를 입력해주세요.'); 	
      	  	$('#zipcode').focus();
      	     return false;
      	    }	
   	 	else if($('#fromDate').val()=="" || $('#endDate').val()=="")
	    {
   	     alert('대여 정보를 입력해주세요.'); 	
   	     return false;
   	    }	
	  IMP.init('imp81715131'); 
	  IMP.request_pay({
	    pg: 'inicis',
	    pay_method: 'card',
	    merchant_uid : 'merchant_'+new Date().getTime(),
	    name : 'Daesinsa 대여',
	    amount : priceVal
	  }, function (rsp) { // callback
	      if (rsp.success) {
       	 msg = '결제에 성공하였습니다. ';
       	 alert(msg);	
       	rentSuccess();
       	location.href="rentalss"
        } else {
	   msg = '결제에 실패하였습니다.';
       msg += '에러내용 : ' + rsp.error_msg;
                //실패시 수행하는 로직 
             
                
	      }
	  });
	})
	</script> 
	
	<!-- 값 확인하기 -->
<!--  	<script>

	$('#btn-checkd').click(function(){
	var startDateVal = $('#fromDate').val();
  	console.log("시작일"+startDateVal);
	var endDateVal = $('#endDate').val();
	console.log("종료일"+endDateVal);
	var daysVal = $('#rentalDays').val();
    console.log("대여일수"+daysVal);
    var price = 1500;
    var priceVal = daysVal*price;
	console.log("가격"+priceVal);
	var productVal = '${p_id }';
	console.log("상품"+productVal);
	})
    </script> 
     -->
    
    <!-- 대여 상품 insert , 상품 테이블 is_rental =2 업뎃 -->
      	<script>
      	function rentSuccess(){
      	/* 값 확인 */
		var startDateVal = $('#fromDate').val();
		var endDateVal = $('#endDate').val();
		var daysVal = $('#rentalDays').val();
	    var price = 1500;
	    var dCharge = 4000;
	    var priceVal = daysVal*price+4000;
	    var productVal = '${p_id }';
		var token = $("input[name='_csrf']").val();
		var header = "X-CSRF-TOKEN";    
	$.ajax({
		url : "${pageContext.request.contextPath}/rent/rentinsert.do"
		,type: "post"
		,data :{
			p_id : productVal,
			r_startdate : startDateVal,
			r_enddate : endDateVal,
			r_price : priceVal
		}
		,beforeSend : function(xhr)
		  {  
		 	 xhr.setRequestHeader(header, token);
		  }
		,success:function(data){
			console.log("결과는??? 1이면 성공"+data);	
				},
			error : function(errcode) {
			console.log(errcode);
			history.back();
				}
			});
		};
	</script>

</body>
</html>