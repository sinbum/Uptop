<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%-- ${memberVO} --%>

<div class="container">
  <h3>프로필 정보</h3>
  <p>나의 프로필정보 현황</p>
  
  <label for="membernum">회원번호</label>
  <input type="text" id="membernum" value="${memberVO.num}" disabled="disabled"><br>
  
  <label for="memberid">아이디</label>
  <input type="text" id="memberid" value="${memberVO.id}" disabled="disabled"><br>
  
  <label for="memberpassword">비밀번호</label>
  <input type="password" id="memberpassword" value="${memberVO.password}" disabled="disabled"><br>
  
  <label for="memberemail">이메일</label>
  <input type="email" id="memberemail" value="${memberVO.email}" disabled="disabled"><br>

</div>

