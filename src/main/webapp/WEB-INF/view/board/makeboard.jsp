<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<c:if test="${mkBoardResult eq '1'}">
<script>
	alert("게시글이 정상적으로 등록되었습니다.");	
	location.href='/board/getlist';
</script>
</c:if>


<style>
.makeboard{
    padding: 0;
    list-style: none;
    display: block;
}
</style>

<section>
<form action="makeboard/makeboard.do" method="POST">
    <ul class="makeboard">
    	<li>
    		<select name="channel_num">
    		<option value=""> 채널목록 선택 </option>
    			<%-- <option value="${channel.channel_name}">${channel.channel_name}</option> --%>   			
		    	<c:forEach var="channel" items="${channelList}">		    	
		    	<option value="${channel.channel_num}"> <c:out value="${channel.channel_name}"/>,${channel.channel_num}</option>		    	    			
				</c:forEach>
    		</select>
    	</li>
    
        <li>
            <label for="makeboard_firstkeyword">첫번째키워드</label>
            <input type="text" name="board_firstkeyword" id="makeboard_firstkeyword" value="" placeholder="비교할 첫번째 키워드를 입력해주세요">                  
        </li>
        <li>
            <label for="makeboard_secondkeyword">두번째키워드</label>
            <input type="text" name="board_secondkeyword" id="makeboard_secondkeyword" value="" placeholder="비교할 두번쨰 키워드를 입력해주세요">
        </li>
        <li><input type="text" name="board_name" id="" value="" placeholder="컨텐츠 제목을 입력해주세요"></li>
        <li><input type="text" name="board_content" id="" value="" placeholder="컨텐츠 내용을 입력해주세요"></li>
        <li><input type="submit" value="만들기"><input type="button" value="취소" onclick="window.history.back()"></li>
    </ul>
    
</form>
</section>         
    

