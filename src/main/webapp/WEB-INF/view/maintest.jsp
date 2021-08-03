<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<script>

		/*jquery를 사용한 함수 호출.  */
		$(document).ready(function(){	
			
			 $(".boardname").click(function(){				
	            //alert(boardNum);
	                var boardNum = $(this).attr("value");
			      location.href='/board/searchBoardNum?boardNum='+boardNum;
				});			
			
		}); 
		
		
		/* 자바스크립트를 사용한 호출. */
		function fn_paging(number){
			//alert(number);
			location.href="/board/getlist?requestpagenum="+number;			
			
		}
		
		

		
</script>

<section class="flex-container " id="section">  
		
		<div class="boarditem" id="boarditem">
			<c:forEach var="board" items="${boardslist}" varStatus="idx" end="200">
				<ul>		                
	                <li><font style="cursor:pointer;" class="boardname" id="boardname" value="${board.num}">제목 : <c:out value="${board.board_name}"/></font></li>
	                <li>내용 :<c:out value="${board.board_content}"></c:out></li>
	                <li>키워드 : <c:out value="${board.board_firstkeyword}"/><font>VS</font><c:out value="${board.board_secondkeyword}"/>
	                <li>날짜 :<c:out value="${board.board_date}"></c:out></li>
	                <li>참고채널번호 : <c:out value="${board.channel_num_fk}"></c:out></li>               
		                
		        </ul>
			</c:forEach>
		</div>
		
		
		<div>
         <c:if test="${pagination.curPage ne 1 }">
         	<a href="#" onclick="fn_paging(1)">[처음]</a>         	                    
         </c:if>
         <c:if test="${pagination.curPage ne 1}">
            <a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a> 
         </c:if>
         <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
             <c:choose>
                 <c:when test="${pageNum eq  pagination.curPage}">
                     <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
                 </c:when>
                 <c:otherwise>
                     <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
                 </c:otherwise>
             </c:choose>
         </c:forEach>
         <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
             <a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
         </c:if>
         <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
         	<a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a>        			
         </c:if>
     	</div>

        <div>
            총 게시글 수 : ${pagination.listCnt} /    총 페이지 수 : ${pagination.pageCnt} / 현재 페이지 : ${pagination.curPage} / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt}
        </div>
		
				
		
		
      
 </section>