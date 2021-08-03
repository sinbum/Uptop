<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<script>

//alert($(this).attr("id"));
//alert($(this).attr("id")+"Result");

$(document).ready(function(){	
  $("#info > ul > li > font").click(function(){		  
  var idResult = $(this).attr("id")+"Result";
	  $("#"+idResult).toggle("slow");  
	  $.ajax({url: "/mypage/"+$(this).attr("id"), success: function(result){
		  	$("#"+idResult).html(result);
	  }});
  });
});
	
</script>

<body>
<div id="info">
	<ul>
		<li><font style="cursor: pointer" id="profileInfo">나의 프로필 정보</font> </li>
		<li><font style="cursor: pointer" id="channelInfo">나의 채널 정보</font> </li>
		<li><font style="cursor: pointer" id="boardInfo">나의 게시물 정보</font> </li>
	</ul>	
</div>

<div id="profileInfoResult" style="display: none;"></div><br>
<div id="channelInfoResult" style="display: none;"></div><br>
<div id="boardInfoResult" style="display: none;"></div><br>

</body>
