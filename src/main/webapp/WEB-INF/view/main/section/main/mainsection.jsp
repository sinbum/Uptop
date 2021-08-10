<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <section class=" col-sm-8"> -->
  
  
  	<br>
    <div class="breadcrumb justify-content-end">
      <div class="breadcrumb-item"><a href="/index">Home</a></div>      
      <div class="breadcrumb-item active">Index</div>
    </div> 
  
    <div class="container-fluid ">   
      <h4>주간 인기 게시판</h4>
      <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">List group item heading</h5>
            <small>3 days ago</small>
          </div>
          <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
          <small>Donec id elit non mi porta.</small>
        </a>
        
        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">List group item heading</h5>
            <small class="text-muted">3 days ago</small>
          </div>
          <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
          <small class="text-muted">Donec id elit non mi porta.</small>
        </a>
  
  
        
      </div><br><hr>
  
  
  
        <div class="row ">
	      <h4>최근 게시판</h4>
  			<%-- <c:forEach var="board" items="${boardslist}" varStatus="idx" begin="${pagination.startIndex}" end="${pagination.pageSize}"> --%>
  			<c:forEach var="board" items="${boardslist}" varStatus="idx" >
            <div class="col-sm-6 col-md-6 col-lg-3 ">
              <div class="card border-secondary mb-3" style="max-width: 20rem;">
                <div class="card-header"><font style="cursor:pointer;" class="boardname" id="boardname" value="${board.board_num}"><c:out value="${board.board_name}"/></font></div>
                <div class="card-body">
                  <h5 class="card-title">${board.board_firstkeyword} vs ${board.board_secondkeyword}</h5>
                  <p class="card-text">${board.board_date}</p>
                  <p class="card-text">${board.board_content}</p>
                </div>
              </div>
           </div>  
  			</c:forEach>
        </div>
        <!-- 페이지 번호 부분  -->
        <div >
          <ul class="pagination justify-content-center">
				<c:if test="${pagination.curPage ne 1}">
					<li class="page-item">
					  <a class="page-link" href="#" onclick="fn_paging(1)">&laquo;</a>
					</li>
				</c:if>				            
				<c:if test="${pagination.curPage ne 1}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_paging(${pagination.prevPage})">&lt;</a>
					</li>
				</c:if>                     
				<c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
					<c:choose>
						<c:when test="${pageNum eq  pagination.curPage}">
							<li class="page-item active" >
							  <a class="page-link" href="#" onClick="fn_paging(${pageNum})">${pageNum }</a>
							</li>							
						</c:when>
						<c:otherwise>
							<li class="page-item">
							  <a class="page-link" href="#" onClick="fn_paging(${pageNum})">${pageNum}</a>
							</li>						
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_paging(${pagination.nextPage })">&gt;</a>
					</li> 
				</c:if>				
				<c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_paging(${pagination.pageCnt})" >&raquo;</a>
					</li>  	
				</c:if>
          </ul>
        </div>
        <br>  
       
    </div>
    
    
    
    
    
    
    
  <!-- </section>
  <div><br></div>
  <hr> -->