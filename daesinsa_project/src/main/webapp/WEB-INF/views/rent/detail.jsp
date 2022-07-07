<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	href="${pageContext.request.contextPath}/resources/css/shop/detail.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- bx슬라이더 + jquery cdn -->
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- 카카오톡 공유 api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Daesinsa</title>
</head>
<body>
	<jsp:include page="../common/template_rheader.jsp"></jsp:include>
	<div id="mainwrap">
	<div class="product_detail_all container">
	<div class="detail_category ">
	<c:if test = "${detail.category.c_id eq 'C111' || detail.category.c_id eq 'C112'}"><p>남성 상의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C121'}" ><p>남성 하의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C131'}" ><p>남성 가방</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C132'}" ><p>남성 신발</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C133'}" ><p>남성 모자</p></c:if>
 	
	<c:if test = "${detail.category.c_id eq 'C211' || detail.category.c_id eq 'C212'}"><p>여성 상의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C221' || detail.category.c_id eq 'C222'}"><p>여성 하의</p></c:if>
	
	<c:if test = "${detail.category.c_id eq 'C231'}" ><p>여성 가방</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C232'}" ><p>여성 신발</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C233'}" ><p>여성 모자</p></c:if> 
	</div>
		<c:choose>
			<c:when test="${not empty detail }">
        	<div class="product_detail ">
				<div class="product_img_all">
				  <c:forEach items="${detail.p_img_list}" var="img">
				 <c:if test="${not empty img.p_img_path }"> 
          		<div class="product_img">
                <img src="${pageContext.request.contextPath}${img.p_img_path }" width="100%" height="100%">   
       			</div>
       		
                 </c:if> 
				</c:forEach>		
					</div>
					
				<div class="product_info ">
				<div class="product_name"><p> ${detail.p_name }</p></div>
				<div class="product_price"><p>일 1,500원 </p></div> 
				<div class="product_total_review"><a href="#product_review">상품 리뷰 : ${totalCntRe }개 <i class="xi-angle-right-min"></i></a></div>
				  <select id="product_option">
				  <!-- 이 부분 내일 질문 ...  -->
				<c:forEach items="${detail.p_option_info}" var="option">
				<c:choose>
				  <c:when test="${option.po_id eq 'PO2' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				   ><c:if test="${option.poi_type==1 }">S</c:if>
				   <c:if test="${option.poi_type==2 }">M</c:if>
				   <c:if test="${option.poi_type==3 }">L</c:if>
				   <c:if test="${option.poi_type==4 }">XL</c:if>
				   </option>
				  </c:when>
				  <c:when test="${option.po_id eq 'PO3' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				  <c:if test="${option.poi_type==5 }">value="5"</c:if>
				   ><c:if test="${option.poi_type==1 }">250</c:if>
				   <c:if test="${option.poi_type==2 }">260</c:if>
				   <c:if test="${option.poi_type==3 }">270</c:if>
				   <c:if test="${option.poi_type==4 }">280</c:if>
				    <c:if test="${option.poi_type==5}">290</c:if>
				   </option>
				   </c:when>
				   <c:when test="${option.po_id eq 'PO4' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				  <c:if test="${option.poi_type==5 }">value="5"</c:if>
				   ><c:if test="${option.poi_type==1 }">210</c:if>
				   <c:if test="${option.poi_type==2 }">220</c:if>
				   <c:if test="${option.poi_type==3 }">230</c:if>
				   <c:if test="${option.poi_type==4 }">240</c:if>
				    <c:if test="${option.poi_type==5}">250</c:if>
				   </option>
				  </c:when>
				  <c:otherwise>
				  <option>Free</option>
				  </c:otherwise>
				  </c:choose>
				</c:forEach>
				  </select>
				  <br>
				  <form action="${pageContext.request.contextPath}/rent/rentinsert" method="post">
					<input type="hidden" name="p_id" value="${detail.p_id }">
					<input type="hidden" name="p_name" value="${detail.p_name }">
					<button type="submit" class="btn btn-light btn_rental" 
					onclick="location.href='${pageContext.request.contextPath}/rent/rentinsert?p_id=${detail.p_id }'"
					><i class="xi-laundry"></i> &nbsp;대여하기</button>
					</form>

          <div class="product_share">
            <button type="button" class="btn btn-light" onclick="copyURL();"><i class="xi-share-alt-o xi-x"></i> </button>
            <button type="button" class="btn btn-light" onclick="shareTwitter();" id="twitter"><i class="xi-twitter xi-x"></i> </button>
            <button type="button" class="btn btn-light" onclick="shareFacebook();" id="facebook"><i class="xi-facebook-official xi-x"></i> </button>
            <button type="button" class="btn btn-light" onclick="shareKakao();" id="kakao"><i class=" xi-kakaotalk xi-x"></i> </button>
           
         		 </div>
				</div>
				</div>
					<div class="product_des ">
					<hr style="border: solid 2px black;">
						<p>${detail.p_content }</p>
						<p>상품 코드</p>
						<p>${detail.p_id}</p>
						<p>상품 등록일 </p>
						<p> ${fn:substring(detail.p_postdate ,0,10) }</p>
						<p> <i class="xi-truck"></i> &nbsp;왕복 배송비 : 4,000원</p>
						
					</div>
				</c:when>
			<c:when test="${empty detail } ">
상품이 없습니다.
</c:when>
		</c:choose>


<!-- 상품리뷰 -->
			<div id="product_review" class="product_review ">
			<hr style="border: solid 2px black;">
				<h1>상품 리뷰 <span>${totalCntRe }</span> 개</h1>
				<div class="product_review_content ">
					<c:choose>
						<c:when test="${not empty ProductReview }">
							<div class="product_review_left">
								<table>
									<c:forEach items="${ProductReview }" var="re">
										<tr>
											<td class="review_title">${re.pr_title}</td>
										</tr>
										<tr>
											<td class="review_content">${re.pr_content}</td>
										</tr>
										<c:if test="${not empty re.pr_review_img[0].pr_img_path }">
											<tr>
												<td>
												<img src="${pageContext.request.contextPath}${re.pr_review_img[0].pr_img_path}"
													width="60%" height="60%"></td>
											</tr>
										</c:if>
									</c:forEach>
								</table>
							</div>

							<div class="product_review_right">
								<table>
									<c:forEach items="${ProductReview }" var="re">
										<tr>
											<td class="review_date">작성일: ${fn:substring(re.pr_date,0,16) }</td>
										</tr>
										<tr>
											<td class="review_writer">리뷰 작성자:<%-- ${re.pr_m_id} --%>
											</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</c:when>
						<c:when test="${empty  ProductReview}">
							<table>
								<tr>
									<td>현재 작성된 상품 리뷰가 없습니다.</td>
								</tr>
							</table>
						</c:when>
					</c:choose>
				</div>
				<button type="button" class="btn-loadmore btn btn-outline-dark container">
				<i class="xi-caret-down-min"></i> Load More </button>
			</div>





			<!-- 상품문의 -->
<div class="product_qna ">
<hr style="border: solid 2px black;">
<h1> 상품 문의</h1>
<div class="insert_qna">
<button type="button" class="btn btn-dark  btn-sm" onclick="openQna();">문의 작성</button>
</div>
<div class="product_qna_all">
<c:choose>
<c:when test="${not empty ProductQna }">
<c:forEach items="${ProductQna }" var="qna">
 <div class="qna">
<div class="product_qna_title">
<c:if test="${qna.pq_level ==1 }">
<p><i class="xi-subdirectory-arrow"> </i>답변완료</p>
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>

</c:if>
<c:if test="${qna.pq_level ==0 }">
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>
</c:if>
</div>
<div class="product_qna_desc">
<p>내용${qna.pq_content }</p>
<p>비밀글여부${qna.pq_closed }</p>
<c:if test="${qna.pq_level ==0 }">
<div class="qna_delete">
<button type="submit" class="btn qna_delete" > 삭제 </button>
<input type="hidden" class="pq_qref_value" value="${qna.pq_qref }">
</div>
</c:if>

<c:if test="${qna.pq_level ==0 }">

<form action="${pageContext.request.contextPath}/shop/qnaanswer" method="post"
target="qnaAnswer" onsubmit='openAnswer();'>
<input type="hidden" name ="pq_content_copy" value="${qna.pq_content }">
<input type="hidden" name ="p_id" value="${detail.p_id}">
 <input type="hidden" name ="pq_no" value="${qna.pq_no }">
<button type="submit" class="btn btn-dark btn-sm">답변</button>
</form>
</c:if>
</div>
</div>
</c:forEach>

<!-- 상품문의 삭제 스크립트 -->
<script>
	$(".qna_delete").click(function(){
		console.log($(this));
		console.log($(this).next().val());
	$.ajax({
		url : "${pageContext.request.contextPath}/shop/pqnadelete"
		,type: "post"
		,data :{
			pq_qref : $(this).next().val()
			}
		,success:function(result){
			console.log(result);
			alert(result);
			window.location.reload();
				},
				error : function(errcode) {
					console.log(errcode);
				}
			});
		});
	</script>
	
	
</c:when>
<c:when test="${empty  productQna}">
현재 작성된 상품 문의가 없습니다.
</c:when>
</c:choose>
</div>
<div class="paging">

  <ul class="pagination justify-content-center">
     <c:if test="${startPage > 1 }">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/shop/detail?p_id=${detail.p_id}&page=${startPage-1 }"
       aria-label="이전">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
       </c:if>
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
    <li class="page-item"><a class="page-link"
     href="${pageContext.request.contextPath}/shop/detail?p_id=${detail.p_id}&page=${i}">${i }</a></li>
    </c:forEach>
    	<c:if test="${endPage < pageCnt}">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/shop/detail?p_id=${detail.p_id}&page=${endPage+1 }"
       aria-label="다음">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </c:if>
  </ul>

		
		

		</div>
</div>

	</div>

	<div class="product_delivery container">
		<hr style="border: solid 2px black;">
	<!-- 대여 배송관련 정보 적어두기 (폼 진입 시 한번 더 약관으로 확인) -->
	</div>
	
</div>
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	
	<!-- 상품 리뷰 더 보기 스크립트  -->
	<script>
        
        $(function(){ //리뷰 5개씩 보여주기
        	if($(".product_review_content").length<5){
        	//console.log($(".product_review_content").length);
        	$(".btn-loadmore").hide();
        	}
        	else {
        $(".product_review_content").slice(0, 5).show(); 
        $(".btn-loadmore").click(function(e){
            e.preventDefault();
            $(".product_review_content:hidden").slice(0, 5).show(); 
            if($(".product_review_content:hidden").length == 0){ 
            	 $(".btn-loadmore").hide(); 
            }
        })
        	}
    });
    </script>
    
	<!-- 상품 qna 스크립트 -->
    <script>
      let eleBtns= document.getElementsByClassName("product_qna_title");
      for (var i = 0; i<eleBtns.length ; i++){
        eleBtns[i].onclick = function(){
            console.log(this); 
            console.log(this.nextElementSibling);
            var eleNext = this.nextElementSibling;
            var isDisplay = eleNext.style.display;
            console.log(isDisplay);
            if(isDisplay =="" || isDisplay =="none"){
                eleNext.style.display="block" ;
      
            } else{
                eleNext.style.display="none" ;  
            }
      }
      }
      
      </script>
      
        <!-- 상품 qna 질문창 / 답변 새 창 열기 -->
      <script>
        function openQna(){
          var popup = window.open('${pageContext.request.contextPath}/shop/qnainsert?p_id=${detail.p_id}', 
        		  'daesinsa - 상품리뷰', 'width=800px,height=700px,scrollbars=yes');
        }
      </script>
      
        <script>
        function openAnswer(){
        	var popup = open('','qnaAnswer','width=800px,height=700px,scrollbars=yes');
        }
        </script>
      
	
      <!-- 상품공유 스크립트 -->
        <script>
      // 1. url복사
      window.copyURL = function(){
      prompt("아래의 상품 주소를 복사해주세요",window.location);
      }
		</script>
		
		 <script>    
      // 2. 트위터 공유
      function shareTwitter() {
     
	  var sendText= $('.product_name').text(); //전달할 제목
      var sendUrl = document.URL; // 전달할 URL
      window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
      }
      </script>
      
       <script>
      // 3. 페이스북 공유
      function shareFacebook() {
      var sendUrl =  document.URL; // 전달할 URL
      window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
      }
      </script>
      
       <script>
      // 4. 카카오 공유
      function shareKakao() { 
      // 사용할 앱의 JavaScript 키 설정
      Kakao.init('508c6cadc43c704a73db239c5bc2c017');
	
      // 카카오링크 버튼 생성
      Kakao.Link.createDefaultButton({
      container: '#kakao', // 카카오공유버튼ID
      objectType: 'feed',
      content: {
       title: $('.product_name').text(), // 보여질 제목
       description: $('.product_des').text(), // 보여질 설명 
       imageUrl: document.URL, // 콘텐츠 URL
       link: {
        mobileWebUrl: document.URL,
          webUrl: document.URL
       }
     }
   });
  }
        </script>

	
	<!-- bx 슬라이더 스크립트  -->
	 <script>
      $(document).ready(function(){
        $('.product_img_all').bxSlider();
      });
    </script>
    
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>