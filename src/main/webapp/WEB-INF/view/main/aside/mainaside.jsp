<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





	<br>
    <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true" id="toastshow">
      <div class="toast-header">
        <strong class="me-auto">운영팀 메세지</strong>
        <small>3일 전</small>
        <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close" id="toastshowclose">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="toast-body">
        Hello, world! 안녕하세요 Uptop 운영진입니다. 만나서 반갑습니다.		 
      </div>
    </div><br>

    <div class="alert alert-dismissible alert-primary">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>사용법!</strong> 위쪽에 써있는 사이드버튼을 눌러보세요!
    </div>
    
    <div class="alert alert-dismissible alert-warning">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>사용공지 안내</strong> 지금 <a href="/signin" class="alert-link">이곳을 클릭해 지금바로 회원가입을 시작하세요!</a>, 서비스를 이용하는데 회원가입이 필요하지는 않아요.ㅎ
    </div>

    <div class="alert alert-dismissible alert-success">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>잘하셨어요!</strong> 앞으로는 더많은 서비스를 이용 할 수 있습니다!
     
    </div>


  <!-- 링크 어사이드 -->   
     <button type="button" class="btn btn-outline-warning col-12">생활</button>


    <!-- /링크 어사이드 -->
    
