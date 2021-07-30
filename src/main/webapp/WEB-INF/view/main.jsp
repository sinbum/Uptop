<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<section class="flex-container " id="section">  

		<c:forEach var="board" items="${boardslist}" varStatus="idx" end="${boards}">
		<ul>
                <li>이미지</li>
                <li>제목 : <c:out value="${board.boardsvo.boards_name}"></c:out></li>
                <li>채널명 :<c:out value="${board.boardchannel.channel_name}"></c:out></li>
                <li>조회수 :<c:out value="${board.boarddetail.boardcount}"></c:out></li>
                <li>날짜 : <c:out value="${board.boardsvo.boards_date}"></c:out></li>               
                
        </ul>
		</c:forEach>		
		
		<script>
		var boardnum=document.getElementById("boardnum").value;  
   		</script>
      
 </section>