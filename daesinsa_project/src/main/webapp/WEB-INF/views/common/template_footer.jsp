<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 푸터 시작 -->
<div id="footerwrap">
  <footer class="py-5">
    <div class="row">
      <div class="col-2 footer_list">
        <h5>이용안내</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">이용약관</li>
          <li class="nav-item mb-2">개인정보 처리 방침</li>
          
        </ul>
      </div>

      <div class="col-2 footer_list">
        <h5>고객지원</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="${pageContext.request.contextPath}/cs/notice" class="nav-link p-0 text-muted">고객센터</a></li>
          <li class="nav-item mb-2">서비스 이용안내</li>
       
        </ul>
      </div>



      <div class="col-4 offset-2">
          <h5>고객센터 2022-0729</h5>
          <p>운영시간 : 평일 10:00 - 18:00</p>
          <p>점심시간 : 12:30 - 13:30</p>
          <div class="d-flex w-100 gap-2">
          <button class="btn btn-sm btn-notice" type="button" 
          onclick="location.href='${pageContext.request.contextPath}/cs/notice'">공지사항</button>
          <button class="btn btn-sm btn-qna " type="button"
            onclick="location.href='${pageContext.request.contextPath}/cs/qnaMain'">1:1문의</button>  
          <button class="btn btn-sm btn-faq" type="button"
           onclick="location.href='${pageContext.request.contextPath}/cs/faq'">자주묻는 질문</button>
          </div>
      </div>
    </div> 

    <div class="d-flex justify-content-between py-4 my-4 border-top">
      <p>© 2022 Company, Inc. All rights reserved.</p>
    </div>
  </footer>
</div>
<!-- 푸터 끝 -->