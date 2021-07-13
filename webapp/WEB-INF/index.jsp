<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
   <title>UpTop</title>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="preconnect" href="https://fonts.gstatic.com">    
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <!-- 현재 폴더의 css폴더를 불러옴. -->
   <link rel="stylesheet" href="/css/style.css">
   <!-- 현재 폴더의 자바스크립트 폴더를 불러옴. -->
   <script type="text/javascript" src="/js/script.js"></script> 
</head>
<body>    
    <header>
      <!-- 구조화 된 네비게이션 바 부분을 jsp로 로드함. -->
        <jsp:include page="/WEB-INF/view/nav.jsp"></jsp:include>           
    </header>

    <main>  
    	<!--aside 부분  -->   
        <jsp:include page="/WEB-INF/view/aside.jsp"></jsp:include>
        <!--section 부분  -->
        <jsp:include page="/WEB-INF/${section}"></jsp:include> 
		     
    </main>
    
   
    
</body>


</html>