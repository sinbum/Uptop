<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 
<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->

  <ul class="nav nav-tabs">

    <li class="nav-item">
      <a class="nav-link active" data-bs-toggle="tab" href="#home">home</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#profile">Profile</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#channel">Channel</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#board">Board</a>
    </li>

    
  </ul>

  <div id="myTabContent" class="tab-content">
    <div class="tab-pane fade active show" id="home">
    <br>


      <div class="card mb-3">
        <h3 class="card-header">회원정보</h3>
        <div class="row ">
          <div class="card-body col-8">
            <h5 class="card-title"> 안내사항</h5>
            <h6 class="card-subtitle text-muted">Profile,Channel,Board 버튼을 눌러 정보를 확인 할 수 있습니다.</h6>
          </div>
          <img class="rounded-pill" src="computer.gif" alt="">
          </div><br>
        
        
        <ul class="list-group list-group-flush">
          <li class="list-group-item text-dark">마이페이지 에서 정보를 수정하고 편집하세요.
          </li>
        
        </ul>
        <div class="card-body">
          <a href="#" class="card-link">운영자에게 메일보내기</a>
        </div>
        <div class="card-footer text-muted">
         공지 게시일 :  2 일전
        </div>
      </div>
     

    
    </div>



    <!-- 회원정보를 수정하는 부분. -->
    <div class="tab-pane fade" id="profile">
    <br>
      <h3>나의 회원 정보</h3>
      <p>현재 아이디로 등록된 회원정보입니다.</p>

      <form action="">
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">회원번호</label>
            <input class="form-control" id="readOnlyInput" type="text" readonly="" value="">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">아이디</label>
            <input class="form-control" id="readOnlyInput" type="text"  readonly="" value="">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">비밀번호</label>
            <input class="form-control" id="readOnlyInput" type="password" readonly="" value="a">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">이메일</label>
            <input class="form-control" id="readOnlyInput" type="email" readonly="" value="ddd@naver">
          </fieldset>
        </div> <br>
        <div class="float-end">
          <button type="button" class="btn btn-primary ">이메일 변경</button>
          &nbsp
          <button type="button" class="btn btn-primary ">비밀번호 변경</button>  


        </div>
      </form>

      
    </div>
          <!-- 나의 채널정보 -->
          <!-- 채널번호,채널명,채널분류,등록날짜
          채널수정버튼,채널삭제버튼 -->

     <!-- 채널 정보를 수정하는 부분. -->
     <div class="tab-pane fade" id="channel">
      <br>
       <h3>채널정보 목록</h3>
       <p>현재 아이디로 등록된 채널정보 입니다.</p>

       <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">채널번호</th>
            <th scope="col">채널명</th>
            <th scope="col">채널분류</th>
            <th scope="col">등록날짜</th>
            <th scope="col"></th>            
          </tr>
        </thead>
        <tbody> 

          <form action="" method="GET">
          <tr>
            <th scope="row">Default</th>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
            <th scope="col"><button type="submit" class="btn btn-outline-warning btn-sm">수정</button></th>
          </tr>
        </form>
        <form action="" method="GET">
          <tr>
            <th scope="row">Default</th>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
            <th scope="col"><button type="submit" class="btn btn-outline-warning btn-sm">수정</button></th>
          </tr>
        </form>
        <form action="" method="GET">
          <tr>
            <th scope="row">Default</th>
            <td>Column content</td>
            <td>Column content</td>
            <td>Column content</td>
            <th scope="col"><button type="submit" class="btn btn-outline-warning btn-sm">수정</button></th>
          </tr>
        </form>

        </tbody>
      </table>        
      </div>




      <!-- 게시물 정보를 수정하는 부분. -->

      <!-- 나의 게시물 정보 -->
     <!-- 게시번호 게시물제목 게시날짜
     게시물수정버튼,게시물삭제버튼 -->

      <div class="tab-pane fade" id="board">
        <br>
        <h3>게시물 정보 목록</h3>
        <p>현재 아이디로 등록된 게시물 입니다.</p>
        
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">게시번호</th>
            <th scope="col">게시물제목</th>
            <th scope="col">게시날짜</th>
            <th scope="col"></th>            
          </tr>

        </thead>
        <tbody>  
                  
          <form action="" method="GET">
            <tr>
              <th scope="row">Default</th>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
              <th scope="col">
                <button type="submit" class="btn btn-outline-warning btn-sm">수정</button>
                <button type="submit" class="btn btn-outline-danger btn-sm">삭제</button>
              </th>            
            </tr>
          </form>

          <form action="" method="GET">
            <tr>
              <th scope="row">Default</th>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
              <th scope="col">
                <button type="submit" class="btn btn-outline-warning btn-sm">수정</button>
                <button type="submit" class="btn btn-outline-danger btn-sm">삭제</button>              </th>            
            </tr>
          </form>
          
          <form action="" method="GET">
            <tr>
              <th scope="row">Default</th>
              <td>Column content</td>
              <td>Column content</td>
              <td>Column content</td>
              <th scope="col">
                <button type="submit" class="btn btn-outline-warning btn-sm">수정</button>
                <button type="submit" class="btn btn-outline-danger btn-sm">삭제</button>              </th>            
            </tr>
          </form>

        </tbody>
      </table> 
    
  
        
      </div>


    
    
  </div>



  
  <!-- 프로필정보 -->
  <!-- 회원번호,아이디,비밀번호,이메일
  비밀번호수정버튼,이메일수정버튼 -->







   
   
   
<!-- </section> -->

<!-- /섹션 -->
  