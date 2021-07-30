<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
            <label for="makeboard_firstkeyword">첫번째키워드</label>
            <input type="text" name="" id="makeboard_firstkeyword" value="" placeholder="비교할 첫번째 키워드를 입력해주세요">                  
        </li>
        <li>
            <label for="makeboard_secondkeyword">두번째키워드</label>
            <input type="text" name="" id="makeboard_secondkeyword" value="" placeholder="비교할 두번쨰 키워드를 입력해주세요">
        </li>
        <li><input type="text" name="" id="" value="" placeholder="컨텐츠 제목을 입력해주세요"></li>
        <li><input type="text" name="" id="" value="" placeholder="컨텐츠 내용을 입력해주세요"></li>
        <li><input type="submit" value="만들기"><input type="button" value="취소" onclick="window.history.back()"></li>
    </ul>
</form>
</section>         
    

