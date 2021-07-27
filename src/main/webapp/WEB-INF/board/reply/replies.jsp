<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <style>
    li{list-style: none; padding: 8px 12px;}
    ul{padding: 0;}

</style> -->

<ul id="replies">
	<ul>
		<li>댓글 10개</li>	
    </ul>	
	<div>
        <ul style="display: flex;">
            <li>pimg</li>
            <ul style="width:100%;">
            <form action="/board/comment/insert"><li><input type="text" name="" id="" placeholder="댓글입력" style="width:80%;"><input type="submit"></li></form>
            </ul>
            
        </ul>        
        <hr>              
        <ul style="display: flex;">            
        	<li >이미지</li>
        	<li>              
	            <ul>
	                <ul style="display: flex;">
	                    <li>댓글작성자</li>
	                    <li>2일전</li>
	                </ul>
	                <li>댓글내용</li>
	                <ul style="display: flex;">
	                    <li>좋아요</li>
	                    <li>싫어요</li>
	                    <li>답글달기</li>
	                </ul>
	                <li>답글 ?개 보기</li>
                   
	        	</ul>
        	</li>           
        </ul>                
    </div>
</ul>

