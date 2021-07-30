<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<style>
    .makeboard{
        padding: 0;
        list-style: none;
        display: block;
    }
    </style>
    
<body>
	<form action="makechannel/makechannel.do" method="POST">    
	    <ul class="makeboard">
	        <li>
	            <label for="channel_name">채널명</label>
	        </li>
	        <li>
	            <input type="text" name="channel_name" id="channel_name" value="" placeholder="채널명">
	        </li>
	        <li>
	            <label for="channel_category">카테고리 분류</label>
	        </li>
	        <li>
	            <select name="channel_category" id="">
	                <option value="">카테고리</option>
	                <option value="음식">음식</option>
	                <option value="연예">연예</option>
	                <option value="정치">정치</option>
	                <option value="고민">고민</option>
	            </select>
	        </li>
	        <li>
	            <label for="channel_info">채널소개</label>
	        </li>
	        <li>
	            <textarea rows="10" cols="50" name="channel_info"></textarea>
	        </li>           
	        <li>
	            <input type="submit" value="만들기"><input type="button" value="취소" onclick="window.history.back()">
	        </li>
	    </ul>
	</form>
     
        
</body>