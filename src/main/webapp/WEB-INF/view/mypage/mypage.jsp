<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<script>
//$(document).ready(function(){
	
		//function ajax(this){
			//alert("1");
		//}
	
	   // $.ajax({url: "demo_test.txt", success: function(result){
	     // $("#div1").html(result);
	    //}});	    
	    
	//});
	
	//fucntion ajax(s){
		//alert("sss");
	//}
</script>

<body>
<div>
	<ul>
		<li><a href="" onclick="ajax(this.id)" id="profileInfo">나의 프로필 정보</a></li>
	</ul>
	<ul>
		<li><a href="" onclick="ajax(this)" id="channelInfo">나의 채널 정보</a></li>
	</ul>	
	<ul>
		<li onclick="ajax(this)" id="noticeInfo" ><a href="">나의 게시물 정보</a></li>
	</ul>	
</div>



</body>
