<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

 
<!-- 섹션 -->
 <!-- <section class=" col-sm-8"> -->
  <ol class="breadcrumb justify-content-start">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active">Data</li>
  </ol>  
  <form action="signin.do">
    <fieldset>
      <legend>회원가입</legend>
      <div class="form-group row">
        <label for="staticEmail" class="col-sm-4 col-form-label">어서오십시오</label>
        <div class="col-sm-8">
          <input type="text" readonly="" class="form-control-plaintext" id="staticEmail" value="가입을 위해 아래를 작성해주세요.">
        </div>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1" class="form-label mt-4">이메일</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="예) hong@gmail.com" name="email">
        <small id="emailHelp" class="form-text text-muted">Uptop은 회원정보를 절대 공유하지 않습니다.</small>
      </div>
      <div class="form-group">
        <label for="signid" class="form-label mt-4">아이디</label>
        <input type="text" class="form-control" id="signid" placeholder="아이디 입력" name="id">
        </div>        
      <div class="form-group">
        <label for="exampleInputPassword1" class="form-label mt-4">비밀번호</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="10자리 이상,대소문자 포함" name="password">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1" class="form-label mt-4">비밀번호 재입력</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호 재입력" name="repassword">
      </div>
      
     
      <div class="form-group">
        <label for="exampleTextarea" class="form-label mt-4">가입 한마디</label>
        <textarea class="form-control" id="exampleTextarea" rows="3" name="signcomment"></textarea>
      </div><br><br>
      

      <div class="d-grid gap-2">
        <button class="btn btn-lg btn-primary" type="submit">회원가입</button>
      </div>

    </fieldset>      
    
  </form>

  
  
  
   
   
   
   
<!-- </section> -->
<!-- /섹션 -->
  