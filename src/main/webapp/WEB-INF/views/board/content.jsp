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

    <h1> ${board.boardNo}번 게시물 내용</h1>

<p>
	# 글번호: ${board.boardNo}<br>
	# 작성자:  ${board.writer}<br>
	# 제목: ${board.title}<br>
	# 추천수:${board.recommendation} <br>
	# 조회수:${board.view} <br>
	# 내용: <br>
	<textarea rows="5" cols="30" disabled>${board.content}</textarea>
</p>

<a href="/board/list">글 목록보기</a>&nbsp;
<a href="/board/modify?boardNo=${board.boardNo}">글 수정하기</a>
<a href="/board/recommendation?boardNo=${board.boardNo}">글 추천</a>


</body>
</html>