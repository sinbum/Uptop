<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%-- <c:set var="board" value="${boards}" scope="request"/> --%>

<%-- "${boardInfo}"  <br> --%>
<%-- "${boardDetail}" <br> --%>


 <section>
 <div class="container-fluid" id="main_section">
            <div class="row">
              <div class="col-sm-8" style="background-color:white;">
                    <ul class="row">
                        <li class="col-sm-12">
                             <img class="col-sm-12" src="data:image/jpeg;base64,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" alt=""><hr>
                        </li>
                        
                        <li class="col-sm-12">
                            <ul >
                            	<li>제목 : ${boardInfo.board_name}</li>
                                <li id="board_name">${boardInfo.board_firstkeyword}vs${boardInfo.board_secondkeyword}</li>
                            </ul> <hr>
                        </li>                    
                    
                        
                        <li class="col-sm-12">
                            <ul class="d-flex p-6 ">
                                <li class="p-2">조회수 :${boardDetail.boardcount}회 </li>
                                <!-- <li class="p-2">{board.get(0).getBoards_date()}</li> -->
                                <li class="p-2">좋아요 :${boardDetail.boardlike}회</li>
                                <li class="p-2">싫어요 : ${boardDetail.boardhate}회</li>
                                <li class="p-2">공유</li>
                                <li class="p-2">더보기(신고)</li> 
                            </ul>    <hr>
                        </li>
                        <li class="col-sm-12">
                            <ul class="row">

                                <li class="col-2">채널사진</li> 
                                <div class="col-10">
                                    <ul class="row">
                                        <div class="col-sm-12">                                        
                                            <div class="d-flex">
                                                <ul class="p-2">
                                                     <li>채널명 : ${boardInfo.channel_name}</li> 
                                                     <li>카테고리 : ${boardInfo.channel_category}</li>                                                      
                                                </ul>    
                                                <li class="p-2 ml-auto">구독버튼</li><hr>
                                            </div> 
                                        </div>
                                     <!--   처리해야할 일 컨텐츠 내용에 높이제한,, 더보기와 간략히 스크립트 동작 -->
                                        <li class="col-sm-12">
                                            <ul>
                                                <li><!-- {board.get(0).getBoards_content()} --></li>
                                                <li>더보기,간략히 페이드인 아웃처리 하면 될것 같음.</li>                    
                                            </ul>
                                        </li> 
                                    </ul>
                                </div>
                           	</ul>
                            <hr>
                            <div>
                            	<jsp:include page="/WEB-INF/view/board/reply/replies.jsp"></jsp:include>
                            </div>
                            
                        </li>                        
                    </ul>
                </div>
               
                <div id="main_aside" class="col-sm-4" style="background-color:orange;">
                     <p>              
                    <%-- <jsp:include page="/WEB-INF/view/main.jsp"></jsp:include> --%>
                </div>
            </div>
            </div>
            
   </section>