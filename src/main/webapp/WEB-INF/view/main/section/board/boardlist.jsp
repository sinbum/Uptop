<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 
<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->
  
<c:forEach var="board" items="${boardslist}" varStatus="idx" end="200">
  
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">${board.board_firstkeyword} vs ${board.board_secondkeyword}</h4>
      <p class="card-text text-muted">조회수 2 천</p>
      <h6 class="card-subtitle mb-2 text-muted">${board.board_content}</h6>      
      <form action="/searchboardnum">
      <button type="submit" class="btn btn-outline-info btn-sm" value="${board.num}" name="boardNum">자세히 보기</button>      
      </form>
    </div>
  </div><br>
  
  
</c:forEach>

 

  <div>
    <ul class="pagination justify-content-center">
      <li class="page-item disabled">
        <a class="page-link" href="#">&laquo;</a>
      </li>
      <li class="page-item active">
        <a class="page-link" href="#">1</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">2</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">3</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">4</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">5</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">&raquo;</a>
      </li>
    </ul>
  </div>


   
   
   
   
<!-- </section> -->

<!-- /섹션 -->
  