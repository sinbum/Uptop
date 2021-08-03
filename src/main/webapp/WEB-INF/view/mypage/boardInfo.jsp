<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
    <%-- ${boardVO} --%>

<div class="container">
  <h3>현재 나의 게시물 정보</h3>
  <p>게시물 상황</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>게시번호</th>
        <th>게시물제목</th>
        <th>게시물등록날짜</th>
      </tr>
    </thead>
    <tbody>    	
   		<c:forEach var="board" items="${boardVO}">
	      <tr>
	        <td><c:out value="${board.num}"/></td>
	        <td>"${board.board_name}"</td>
	        <td>"${board.board_date}"</td>
	      </tr>
      </c:forEach>      
    </tbody>
  </table>
</div>

