<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>


 
<!-- 섹션 -->
<!-- <section class=" col-sm-8"> -->

<!-- 인풋 셀렉트 텍스트아리아 버튼2개 -->

<h3>채널만들기</h3>
<p>커뮤니티 채널을 만들어 다양한 컨텐츠를 분류별로 제공할 수 있습니다.</p>


<div class="form-group">
  <label class="col-form-label mt-4" for="inputDefault">채널명</label>
  <input type="text" class="form-control" placeholder="Default input" id="inputDefault">
</div>

<div class="form-group">
  <label for="exampleSelect1" class="form-label mt-4">채널 분류</label>
  <select class="form-select" id="exampleSelect1">
    <option class="text-black-50">음식</option>
    <option class="text-black-50">생활</option>
    <option class="text-black-50">연애</option>
    <option class="text-black-50">정치</option>    
    <option class="text-black-50">연예</option>
    <option class="text-black-50">스포츠</option>
  </select>
</div>

<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">채널소개</label>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
</div><br>

<div class="float-end"> 
<button type="button" class="btn btn-outline-secondary ">만들기</button> &nbsp
<button type="button" class="btn btn-outline-secondary ">취소</button>
</div>




   
   
   
<!-- </section> -->
