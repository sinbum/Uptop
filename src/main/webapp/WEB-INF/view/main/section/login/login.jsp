<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 
<!-- 섹션 -->
 <!-- <section class=" col-sm-8" style="height: 500px;"> -->
  <ol class="breadcrumb justify-content-start">
    <li class="breadcrumb-item"><a href="#">Home</a></li>    
    <li class="breadcrumb-item active">Login</li>
  </ol>  
  
  <form action="/login.do" method="POST">   
  <div class="form-group">
    <label class="form-label mt-4 ">로그인</label>
    <div class="form-floating mb-3">
      <input type="id" class="form-control btn-outline-danger" id="floatingInput" placeholder="name@example.com" name="id">
      <label for="floatingInput">아이디를 입력해주세요.</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control btn-outline-danger" id="floatingPassword" placeholder="Password" name="password">
      <label for="floatingPassword">비밀번호를 입력해주세요.</label>
    </div>
  </div> 

  <br>
  
  <div class="form-group d-grid gap-2">
    <button class="btn btn-lg btn-outline-info" type="submit">로그인</button>
    <button class="btn btn-lg btn-outline-info" type="button">회원가입</button>
  </div>
</form><br>
<div class="float-end">
<button type="button" class="btn btn-outline-secondary btn-sm">아이디 찾기</button>
<button type="button" class="btn btn-outline-secondary btn-sm">비밀번호 찾기</button>
</div>
   
   
   
   
<!-- </section> -->
<!-- /섹션 -->
  