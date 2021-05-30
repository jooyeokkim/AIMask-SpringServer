<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty fileName}">
		<label>업로드한 이미지</label><br>
		<img src="resources/upload/${fileName}" width="25%"><br>
		<label>${fileName}</label>
		
		<form action="http://localhost:5000/aimask" method="post">
			<input type="hidden" name="myfile" value=${fileName}>
			<input type="submit" value="서버로 전송">
		</form>
	</c:if>
	
	<c:if test="${empty fileName}">
		<label>이미지 업로드에 실패했습니다. 잠시 후 다시 시도해주세요</label>
		<a href="${pageContext.request.contextPath}/upload">업로드 페이지</a>
	</c:if>
	
</body>
</html>