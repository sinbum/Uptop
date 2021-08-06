<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

    
    
 <div class="container-fluid">
  <a class="navbar-brand" href="#">Uptop!</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav me-auto">
      <li class="nav-item">
        <a class="nav-link active" href="#">홈
          <span class="visually-hidden">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" id="asidetoggle">사이드</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">투표</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">어바웃</a>
      </li>
      <li class="nav-item dropdown ">
      
          <!-- 세션 아이디 값이 없을 경우 기본 로그인창으로 이동. --> 	
				<c:if test="${empty id}">
        <a class="nav-link " href="/login" >로그인</a>
        		</c:if>
		<!-- 세션 아이디 값이 있을경우 아래와 같이 마이페이지,로그아웃,고객센터 페이지로 이동할 수 있는 경로를 설정해 줌. -->        		
        		<c:if test="${not empty id}">
        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" >"${id}" 님</a>        		
        <div class="dropdown-menu">
          <a class="dropdown-item" href="/about">Uptop소개</a>
          <a class="dropdown-item" href="/mypage">마이페이지</a>
          <a class="dropdown-item" href="/emailtoteam">운영자에 한마디</a>          
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="/logout">로그아웃</a>
        </div>
        		</c:if>
      </li>
    </ul>
    



    <form class="d-flex" >
      <input class="form-control me-sm-2" type="text" placeholder="검색어 입력">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit" style="width: 95px;" hidden>검색</button>        
    </form>
  </div>
</div>

 