<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<script>
	
$(document).ready(function(){	
	  $("#info > ul > li > font").click(function(){	  	
		  //alert($(this).attr("id"));
		  
		  $.ajax({url: "/mypage/"+$(this).attr("id"), success: function(result){
			    $("#resultinfo").html(result);
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

<div id="resultinfo"></div>

</body>
