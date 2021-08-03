<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%-- "${channelVO}" --%>

<div class="container">
  <h3>현재 나의 채널정보</h3>
  <p>채널상황</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>채널번호</th>
        <th>채널명</th>
        <th>채널분류</th>
        <th>채널등록등록날짜</th>       
      </tr>
    </thead>
    <tbody>    	
   		<c:forEach var="channel" items="${channelVO}">
	      <tr>
	        <td><c:out value="${channel.channel_num}"/></td>
	        <td>"${channel.channel_name}"</td>
	        <td>"${channel.channel_category}"</td>
	        <td>"${channel.channel_date}"</td>
	      </tr>
      </c:forEach>      
    </tbody>
  </table>
</div>

