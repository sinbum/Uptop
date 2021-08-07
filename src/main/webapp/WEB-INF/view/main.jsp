<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <link href="resources/css/bootstrap.css" rel="stylesheet">


  
  <script>
  $(document).ready(function(){
    $("#toastshowclose").click(function(){      
      $("#toastshow").hide();
    });
    
    $("#asidetoggle").click(function(){      
      $("aside").toggle("slow");
    });

  });
  </script>

 
<style>
  
   @font-face {     
  /* 가는글씨체 웹폰트주소 지정*/
  src: url("./resources/css/font/NanumGothic.ttf") format('opentype'); 

  font-family: gs; 
  font-weight: lighter;
  }
  body {
  font-family: gs;
  } 

</style>

</head>
<body>  
  <main class="row justify-content-around">    <!-- main -->
    
    <!-- nav -->    
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary"> 
    	<jsp:include page="/WEB-INF/view/header/nav/nav.jsp"/>
    </nav><br>
    <!-- /nav -->

    <!-- aside --> 
    <aside class="col-sm-2" id="#aside" >  
    	<jsp:include page="/WEB-INF/view/main/aside/mainaside.jsp"/>
    </aside><br><br><br>
    <!-- /aside -->

    <!-- section -->
    <section class=" col-sm-8"> 
      <jsp:include page="/WEB-INF/view/main/section/${section}.jsp"/>
     </section>
     <!-- /section -->

   
    <!-- footer -->    
    <footer>    
    	<jsp:include page="/WEB-INF/view/footer/footer.jsp"/>
    </footer>   
    <!-- /footer -->
  </main> <!-- /main -->
</body>
</html>