<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test="${logincheck eq 'fail'}">
<script>
	alert("아이디나 패스워드가 잘못되었습니다. 다시확인해주세요.");
</script>
</c:if>

<section>
<div class="container">

<form action="/login/login.do" method="post">
    <div class="form-group">
      <label for="id">ID:</label>
      <input type="text" class="form-control" id="id" name="id">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name="password">
    </div>
    <a href="/signin">회원가입</a>
    <a href="#">아이디</a>
    <a href="#">비밀번호찾기</a>
    <button type="submit" class="btn btn-primary">로그인</button>
  </form>
  
  </div>
</section>