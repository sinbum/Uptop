<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">


            <a class="navbar-brand text-dark" id="navbrand" href="/index"><i class="far fa-hand-point-up "> UpTop </i> </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto " id="navbar_item">
                <li class="nav-item active">
                  <a class="nav-link" href="#">홈<span class="sr-only">(current)</span></a>
                </li>

				<c:if test="${not empty id}">            
	                <li class="nav-item">
	                  <a class="nav-link" href="/makeboard">글작성</a>
	                </li> 	            	
 	            </c:if>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">카테고리</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">생활</a>
                      <a class="dropdown-item" href="#">정치</a>
                      <a class="dropdown-item" href="#">연예인</a>
                      <a class="dropdown-item" href="#">사는얘기</a>
                      <a class="dropdown-item" href="#">인테리어</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#" id="category_more">더보기</a>
                    </div>
                  </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게시글</a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">인기글</a>
                    <a class="dropdown-item" href="#">최신글</a>                    
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">더보기</a>
                  </div>
                </li>                
            </ul>
            <ul class="navbar-nav mr-auto " id="navbar_item">
            
                
                 
                   
                <!-- 세션 아이디 값이 없을 경우 기본 로그인창으로 이동. --> 	
				<c:if test="${empty id}">
				<li class="nav-item "><a class="text-dark" href="/login"><em class="far fa-user-circle"></em></a>  </li>
				</c:if>
				
				<!-- 세션 아이디 값이 있을경우 아래와 같이 마이페이지,로그아웃,고객센터 페이지로 이동할 수 있는 경로를 설정해 줌. -->
               	<c:if test="${not empty id}"> 
               	<li class="nav-item dropdown">
                  		 <a class="nav-link dropdown-toggle text-primary" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><em class="far fa-user-circle">${sessionScope.id}</em></a>
	                 	<div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                      <a class="dropdown-item" href="/mypage">마이페이지</a>
	                      <a class="dropdown-item" href="/login/logout">로그아웃</a>
	                      <a class="dropdown-item" href="#">고객센터</a>
	                    </div>
               	</li>            				    				
               	
				</c:if>	            
                  
            
	            <li class="nav-item ">
	
	                <form class="form-inline my-2 my-lg-0">
	                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	                </form>
	            </li>
            </ul>
				         
            </div>
          </nav>
          
          
          
          
          