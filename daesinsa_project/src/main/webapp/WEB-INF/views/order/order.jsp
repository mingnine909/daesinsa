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
<title>주문</title>
</head>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>

	<div class="order_title"><h2 class="order_title_text">Order</h2></div>
	

    <table>
        <tr>
            <td>수령인</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>휴대전화</td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>

        </tr>
        <tr>
            <td>배송지주소</td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
        </tr>

        <tr>
            <td>배송메모</td>
            <td>    <select name="filter_for" >
                <option value="Druck">배송시 요청사항을 선택해주세요</option>
                <option value="Zahl">경비실에 맡겨주세요</option>
                <option value="Temperatur">부재 시 전화주세요</option>
                <option value="Drehzahl">집 앞에 놔주세요</option>
                <option value="andere">감사합니다</option>
            </select></td>



        </tr>
    </table>

 






    </table>













    <jsp:include page="../common/template_footer.jsp"></jsp:include>
    <!-- 부트스트랩 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>	
	
	
	
	
	
	
	
	
	
</body>
</html>