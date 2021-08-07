<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
    
    <c:if test="${result eq 1}">
	    <script>
		    alert("채널이 성공적으로 등록 되었습니다. 최근 페이지로 이동합니다.");    
		    window.history.go(-3);
	    </script>
    </c:if>
    
    <c:if test="${result ne 1}">
	    <script>
	    	alert("등록에 오류가 발생하였습니다. 다시 확인해 주시기바랍니다..");
	    	location.href="/makechannel";
	    </script>
    </c:if>