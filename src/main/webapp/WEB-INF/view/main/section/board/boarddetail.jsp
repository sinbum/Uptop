<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>



<!-- 
  
  글제목
  
  조회수
  등록날짜
  
  채널명,채널분야
  
  컨텐츠 설명
  
  첫번째 키워드 vs 두번째 키워드
  
  좋아요, 싫어요
  
  댓글게시판 
  
-->

<!-- <section class=" col-sm-8">  섹션 시작-->
<br>
<div class="row m-auto">
<h2>${boardInfo.board_name}</h2>
<div class="row">
  <div class="col-lg-3"> <p class="text-muted">조회수 : ${boardDetail.boardcount}</p></div>
  <div class="col-lg-3"> <p class="text-muted">등록날짜 : ${boardInfo.board_date}</p></div>
  <div class="col-lg-3"> <p class="text-muted">작성자 : ${boardInfo.member_id_fk}</p></div>
  <div class="col-lg-3"> <p class="text-muted">분야 : ${boardInfo.channel_category}</p></div>
</div>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
<p class="text-warning">글내용 : ${boardInfo.board_content}</p>




</div> 

<div class="card" style="height: 200px;">
  <div class="row m-auto" style="width: 90%;">
    <div class="col-6 m-auto">
      <button type="button" id="firstkeyword" class="btn btn-outline-info col-11" style="height: 150px; ">${boardInfo.board_firstkeyword}</button>  
    </div>
    <div class="col-6 m-auto">
      <button type="button" id="secondkeyword" class="btn btn-outline-primary col-11" style="height: 150px; ">${boardInfo.board_secondkeyword}</button>
    </div>
  </div>
</div><br>
<div class="row justify-content-end">  
  <div class="col-3">
    <i class="far fa-thumbs-up" style="font-size: 20px; cursor: pointer;" >&nbsp&nbsp<span>${boardDetail.boardlike}</span></i>
  </div>
  <div class="col-3">
    <i class="far fa-thumbs-down" style="font-size: 20px; cursor: pointer;">&nbsp&nbsp<span>${boardDetail.boardhate}</span></i>
  </div>
</div>
<div><br></div>

  

<div class="row m-auto">  
  <div class="card">
    <div class="card-body">
      <h4 class="card-title text-muted">${boardInfo.channel_name }</h4>      
      <h6 class="card-subtitle mb-2 text-secondary">채널등급 : Top Class</h6>
      <p class="card-text text-secondary">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="card-link text-muted">채널정보 더보기</a>      
    </div>
  </div>
</div>

<br>

<div class="float-end">
<button type="button" class="btn btn-outline-light ">다른글 목록보기</button>
<button type="button" class="btn btn-outline-light ">뒤로가기</button>
</div>
<div><br></div>
<div><br></div>

<hr>

   
<!-- </section> -->

<!-- /섹션 -->
  