<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

    
 <c:if test="${result eq 1}"></c:if>
  <script>   
  alert("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.");
  location.href="/login";  
  </script>
  
 <c:if test="${result ne 1}"></c:if> 
  <script>   
  alert("회원가입 처리중 오류가 발생하였습니다. 가입페이지로 다시이동합니다.");
  location.href="/signin";  
  </script>