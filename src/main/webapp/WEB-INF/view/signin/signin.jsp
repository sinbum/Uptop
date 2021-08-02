<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:if test="${signInResult eq '1'}">
<script>
	alert("회원가입이 정상적으로 완료되었습니다.");	
	location.href='/login';
</script>
</c:if>
<c:if test="${signInResult eq '0'}">
<script>
	alert("회원가입 처리도중 오류가 발생하였습니다.");	
</script>
</c:if>
    
<!DOCTYPE html>
<div id="signin">
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" action="/signin/signin.do" method="post">
          <div class="row">            
            <div class="col-md-12 mb-3">
              <label for="nickname">아이디</label>
              <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요" value="" required>
              <div class="invalid-feedback">              
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요." required>
            <div class="invalid-feedback">              
            </div>
          </div>
          <div class="mb-3">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요." required>
            <div class="invalid-feedback">
       
            </div>
          </div>
          <div class="mb-3">
            <label for="repassword">비밀번호재입력</label>
            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="비밀번호를 다시 입력해주세요." required>
            <div class="invalid-feedback">              
            </div>
          </div>
                 
         
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
   
  </div>
  
</div>

