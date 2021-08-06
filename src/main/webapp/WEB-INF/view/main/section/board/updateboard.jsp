<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 
 
<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->

  <div class="row">

   
    <div class="col-lg-5">

  <h3>게시 질문 작성</h3>

    <form action="makeboard/makeboard.do" method="POST">

      <div class="form-group">
        <label class="col-form-label mt-4" for="inputDefault">게시물 제목</label>
        <input type="text" class="form-control btn-outline-warning" placeholder="Default input" id="inputDefault">
      </div>
      <div class="form-group">
        <label class="col-form-label mt-4" for="inputDefault">첫번째 키워드</label>
        <input type="text" class="form-control btn-outline-warning" placeholder="5글자 내로 함축한 키워드를 입력해주세요" id="inputDefault">
      </div>
      <div class="form-group">
        <label class="col-form-label mt-4" for="inputDefault">두번째 키워드</label>
        <input type="text" class="form-control btn-outline-warning" placeholder="5글자 내로 함축한 키워드를 입력해주세요" id="inputDefault">
      </div>
      <div class="form-group">
        <label for="exampleTextarea" class="form-label mt-4" >Example textarea</label>
        <textarea class="form-control btn-outline-warning" id="exampleTextarea" rows="6"></textarea>
      </div>
      <br>

      <div class="float-end">
        <button type="button" class="btn btn-outline-warning">만들기</button>&nbsp;
        <button type="button" class="btn btn-outline-warning">뒤로가기</button>
      </div>
    </form>
    <br>
    <br>

  </div>

<!-- ------------------------------------------------------------------------------------------------------------------  -->
<div class="col-lg-7">
<h3>작성 미리보기</h3>  
<div class="card" style="height: 770px;"><br>

<div class="row m-auto">
  <h2 class="text-secondary">슈퍼맨이 돌아왔다</h2>
  <div class="row">
    <div class="col-lg-3"> <p class="text-muted">조회수 : </p></div>
    <div class="col-lg-3"> <p class="text-muted">등록날짜 : </p></div>
    <div class="col-lg-3"> <p class="text-muted">채널명 : </p></div>
    <div class="col-lg-3"> <p class="text-muted">채널분야 : </p></div>
  </div>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
  <p class="text-secondary ">글내용 : Etiam porta sem malesuada magna mollis euismod.</p>
  

  
  
  </div> 
  
  <div class="" style="height: 200px;">
    <div class="row m-auto" style="width: 90%;">
      <div class="col-6 m-auto">
        <button type="button" id="firstkeyword" class="btn btn-outline-secondary col-11" style="height: 150px; ">투표1</button>  
      </div>
      <div class="col-6 m-auto">
        <button type="button" id="secondkeyword" class="btn btn-outline-secondary col-11" style="height: 150px; ">투표2</button>
      </div>
    </div>
  </div><br>
  <div class="row justify-content-end">  
    <div class="col-3">
      <i class="far fa-thumbs-up text-secondary" style="font-size: 20px; cursor: pointer;" >&nbsp&nbsp<span>10</span></i>
    </div>
    <div class="col-3">
      <i class="far fa-thumbs-down text-secondary" style="font-size: 20px; cursor: pointer;">&nbsp&nbsp<span>3</span></i>
    </div>
  </div>
  <div><br></div>
  
    
  
  <div class="row m-auto">  

    <div class="">
      <div class="card-body">
        <h4 class="card-title text-secondary">Card title</h4>
        <h6 class="card-subtitle mb-2 text-secondary">Card subtitle</h6>
        <p class="card-text text-secondary">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="#" class="card-link text-secondary">채널정보</a>      
      </div>
    </div>
  </div>
  
  <hr>
</div>
</div>   
</div>
<!-- </section> -->

<!-- /섹션 -->
  