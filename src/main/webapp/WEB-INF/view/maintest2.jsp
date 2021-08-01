<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<section class="flex-container " id="section">  

		<c:forEach var="board" items="${boardslist}" varStatus="idx" end="200">
		<ul>
                <li>번호 : <c:out value="${board.boards_num}"></c:out></li>
                <li>제목 : <c:out value="${board.boards_name}"></c:out></li>
                <li>내용 :<c:out value="${board.boards_content}"></c:out></li>
                <li>날짜 :<c:out value="${board.boards_date}"></c:out></li>
                <li>참고채널번호 : <c:out value="${board.channel_num_fk}"></c:out></li>               
                
        </ul>
		</c:forEach>	

      
 </section>