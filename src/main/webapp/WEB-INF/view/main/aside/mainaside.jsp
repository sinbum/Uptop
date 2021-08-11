<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
var ws=new WebSocket("ws://localhost:7070/websocket")
ws.onmessage=onMessage;

function onMessage(msg){
	var data=msg.data;
	//alert(data);
	/*
	if(data=="1"){
		//div 빨강색 박스를 만들고 화면에 나타나는 작업
		document.getElementById("notice").style.visibility="visible";
		document.getElementById("notice").innerHTML=data;
		
	}else{
		//div 빨강색 박스를 사라지는 작업
		document.getElementById("notice").style.visibility="hidden";
	}
	*/
	var notice = document.getElementById("notice");
	var reply = document.getElementById("reply"); 
	var command = document.getElementById("command");
	
	notice.style.visibility="visible";
	reply.innerText+="사용자 : "+data+"\n";
	command.value="";
	notice.scrollTop=notice.scrollHeight;

	
	
}

function command(){
	var cmd=document.getElementById("command").value;
	ws.send(cmd)
}

</script>



	<br>
    <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true" id="toastshow">
      <div class="toast-header">
        <strong class="me-auto">운영팀 메세지</strong>
        <small>3일 전</small>
        <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close" id="toastshowclose">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="toast-body">
        Hello, world! 안녕하세요 Uptop 운영진입니다. 만나서 반갑습니다.		 
      </div>
    </div><br>

    <div class="alert alert-dismissible alert-primary">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>사용법!</strong> 위쪽에 써있는 사이드버튼을 눌러보세요!
    </div>
    
    <div class="alert alert-dismissible alert-warning">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>사용공지 안내</strong> 지금 <a href="/signin" class="alert-link">이곳을 클릭해 지금바로 회원가입을 시작하세요!</a>, 서비스를 이용하는데 회원가입이 필요하지는 않아요.ㅎ
    </div>

    <div class="alert alert-dismissible alert-success">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <strong>잘하셨어요!</strong> 앞으로는 더많은 서비스를 이용 할 수 있습니다!     
    </div>
	

	<div id="notice" style="overflow-y: auto; height:150px; word-brake:brake-all; width:100%; display: block;" class="btn-outline-secondary">
		<div id="reply"></div>
	</div>
	
	<div class="row">  
	  <input type="text" class="form-control col-3" onKeypress="javascript:if(event.keyCode==13) {command()}" placeholder="보낼메세지" name="command" id="command">
	  <!-- <button type="button" class="btn btn-outline-warning col-3" onclick="command()">전송</button> -->
	</div>
	
	<!-- <input type="text" name="command" id="command" class=""> -->
	<!-- <button type="button" class="btn btn-outline-warning col-3" onclick="command()">전송</button> --><br>
	
	

  
