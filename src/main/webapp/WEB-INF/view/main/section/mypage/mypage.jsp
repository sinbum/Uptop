<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 <div><br></div><div><br></div>
<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->

  <ul class="nav nav-tabs">

    <li class="nav-item">
      <a class="nav-link active" data-bs-toggle="tab" href="#home">홈</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#profile">프로필</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#channel">채널</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#board">보드</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#setting">설정</a>
    </li>

    
  </ul>  
  
  
  <!-- 프로필정보 -->
  <!-- 회원번호,아이디,비밀번호,이메일
  비밀번호수정버튼,이메일수정버튼 -->  

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



    <!-- 회원정보를 읽어오는하는 부분. -->
    <!-- ${memberVO} -->
    
    <div class="tab-pane fade" id="profile">
    <br>
      <h3>나의 회원 정보</h3>
      <p>현재 아이디로 등록된 회원정보입니다.</p>

      <form action="">
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">회원번호</label>
            <input class="form-control" id="readOnlyInput" type="text" readonly="" value="${memberVO.num}">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">아이디</label>
            <input class="form-control" id="readOnlyInput" type="text"  readonly="" value="${memberVO.id}">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">비밀번호</label>
            <input class="form-control" id="readOnlyInput" type="password" readonly="" value="${memberVO.password}">
          </fieldset>
        </div>
        <div class="form-group">
          <fieldset>
            <label class="form-label mt-4" for="readOnlyInput">이메일</label>
            <input class="form-control" id="readOnlyInput" type="email" readonly="" value="${memberVO.email}">
          </fieldset>
        </div> <br>
        <div class="float-end">
          <button type="button" class="btn btn-primary ">이메일 변경</button>
          &nbsp;
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
			<c:forEach var="channel" items="${channelVO}">
	       	<form action="" method="GET">
		          <tr>
		            	 <td>${channel.channel_num}</td>
				        <td>${channel.channel_name}</td>
				        <td>${channel.channel_category}</td>
				        <td>${channel.channel_date}</td>
		            <th scope="col"><button type="submit" class="btn btn-outline-warning btn-sm">수정</button></th>
		          </tr>
    		 	</form>   
            </c:forEach>      
            
        </tbody>
      </table>        
			<button type="button" class="btn btn-outline-light justify-content-end" onclick="location.href='/makechannel'">채널 생성하기</button>
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
			<c:forEach var="board" items="${boardVO}">
         	 	<form action="/updateboard" method="GET">
	            <tr>
	              <th scope="row">${board.num}</th>
						<td>"${board.board_name}"</td>
						<td>"${board.board_date}"</td>
						
	              <th scope="col">
	                <button type="submit" class="btn btn-outline-warning btn-sm">수정</button>
	                <button type="button" class="btn btn-outline-danger btn-sm">삭제</button>
	              </th>            
	            </tr>
          		</form>
            </c:forEach>      
            


        </tbody>
      </table> 
    
  
        
      </div>


    
		  <!-- 게시판을 설정하는 부분. 쿠키값으로 테마변경하기. -->
		  
	 <div class="tab-pane fade" id="setting">
        <br>
        
        <h4>현재 적용된 테마 : ${cookie.theme.value}</h4> 
        <p>테마,기본설정 등을 설정합니다.</p>
        <br>
        
        <h4>테마설명</h5>
        <h6>Quartz</h6>
        <p>알록하고 다채로운색상의 가장 운영자가 가장 선호하는 테마입니다.</p>
                
        <h6>Vapor</h6>        
        <p>화려한 네온색상을 입혀 미래지향적인 느낌을 표현하는 테마입니다. 두번째로 가장 인기있는 테마입니다.</p>
               
        <h6>Flatly</h6>
        <p>기본적인 화이트 색상의 테마를 표현합니다.</p>        
        
        <h6>Darkly</h6>
        <p>다크모드를 자주 사용하시는 분들께 추천합니다.</p>
        
        
        
        
        <form action="/themechange">
		<fieldset class="form-group">
		  <legend class="mt-4">테마선택하기</legend>
			  <div class="form-check">
			    <label class="form-check-label">
			      <input type="radio" class="form-check-input" name="theme" id="optionsRadios1" value="quartz" checked="">		      
			      quartz
			    </label>
			  </div>
			  <div class="form-check">
			    <label class="form-check-label">
			      <input type="radio" class="form-check-input" name="theme" id="optionsRadios2" value="vapor">
			      vapor
			    </label>
			  </div>
			  
			  <div class="form-check">
			    <label class="form-check-label">
			      <input type="radio" class="form-check-input" name="theme" id="optionsRadios2" value="flatly">
			      flatly
			    </label>
			  </div>
			  <div class="form-check">
			    <label class="form-check-label">
			      <input type="radio" class="form-check-input" name="theme" id="optionsRadios2" value="darkly">
			      darkly
			    </label>
			  </div><br>
			  <button type="submit" class="btn btn-dark">저장</button>			  
		</fieldset> 
		</form>
	 </div>
    
  </div>
  <div><br></div>
  <div><br></div>
  <div><br></div>
  





   
   
   
<!-- </section> -->

<!-- /섹션 -->
  