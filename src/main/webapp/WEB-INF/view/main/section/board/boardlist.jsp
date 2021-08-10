<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->
  <br>
    <div class="breadcrumb justify-content-end">
      <div class="breadcrumb-item"><a href="/index">Home</a></div>      
      <div class="breadcrumb-item active">Board</div>
    </div> 
    
<c:forEach var="board" items="${boardslist}" varStatus="idx">
  
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">${board.board_firstkeyword} vs ${board.board_secondkeyword}</h4>
      <p class="card-text text-muted">조회수 2 천</p>
      <h6 class="card-subtitle mb-2 text-muted">${board.board_content}</h6>      
      <form action="/searchboardnum">
      <button type="submit" class="btn btn-outline-info btn-sm" value="${board.board_num}" name="boardNum">자세히 보기</button>      
      </form>
    </div>
  </div><br>
  
  
</c:forEach>

 

   <!-- 페이지 번호 부분  -->
        <div >
          <ul class="pagination justify-content-center">
				<c:if test="${pagination.curPage ne 1}">
					<li class="page-item">
					  <a class="page-link" href="#" onclick="fn_board_paging(1)">&laquo;</a>
					</li>
				</c:if>				            
				<c:if test="${pagination.curPage ne 1}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_board_paging(${pagination.prevPage})">&lt;</a>
					</li>
				</c:if>                     
				<c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
					<c:choose>
						<c:when test="${pageNum eq  pagination.curPage}">
							<li class="page-item active" >
							  <a class="page-link" href="#" onClick="fn_board_paging(${pageNum})">${pageNum }</a>
							</li>							
						</c:when>
						<c:otherwise>
							<li class="page-item">
							  <a class="page-link" href="#" onClick="fn_board_paging(${pageNum})">${pageNum}</a>
							</li>						
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_board_paging(${pagination.nextPage })">&gt;</a>
					</li> 
				</c:if>				
				<c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_board_paging(${pagination.pageCnt})" >&raquo;</a>
					</li>  	
				</c:if>
          </ul>
        </div>


   
   
   
   
<!-- </section> -->

<!-- /섹션 -->
  