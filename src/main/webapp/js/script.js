//jquery 이용하기.


        //비동기식 페이지로드. (삭제후 자바내에서 동적페이지 전환 예정.)
          $(document).ready(function(){
            $("#section>ul>li:nth-child(1)").click(function(){
				location.href = '/board?boardnum=' + boardnum;     
				           
            });
        //더보기란을 클릭하면 asie를 토글로 불러옴.
            $("#category_more").click(function(){
                $("aside").toggle("slow");
            });
            
        });



