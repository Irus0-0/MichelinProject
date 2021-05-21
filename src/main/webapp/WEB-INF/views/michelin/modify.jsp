<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>

    <h1>${michelin.board_num}번 평가 내용 수정</h1>
<form action="/michelin/modify" method="post">
	<input type="hidden" name="board_num" value="${michelin.board_num}">
	<p>
		# 글번호: ${michelin.board_num} <br>
		# 작성자: <input type="text" name="writer" value="${michelin.writer}"><br>
		# 제목: <input type="text" name="title" value="${michelin.title}"><br>
		# 별점: <input type="number" min="0.0" max="10.0" step="0.1"name="star" value="${michelin.star}"><br>
		# 내용: <br>
		 <textarea rows="5" cols="30" name="content">${michelin.content}</textarea>	
		<br>
		<input type="submit" value="수정">
	</p>
</form>

<a href="/michelin/list">글 목록보기</a>&nbsp;


</body>
</html>