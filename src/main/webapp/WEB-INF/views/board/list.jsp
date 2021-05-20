<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href = "/css/main.css">
</head>

<body>

    <h1>게시글 목록</h1>
    <table border="1">
        <tr>
            <td>글번호</td>
            <td>작성자</td>
            <td>제목</td>
            <td>별점</td>
            <td>비고</td>


        </tr>

        <c:forEach var="board" items="${List}">
        <tr>
            <td>${board.board_num}</td>
            <td>${board.writer}</td>
            <td>
                <a href="/board/content?boardNo=${board.boardNo}">${board.content}</a>
            </td>
            <td>
                <a href="/board/delete?boardNo=${board.boardNo}">[삭제]</a>
            </td>
        </tr>
        </c:forEach>


        <p>
            <a href="/board/write">게시글 작성하기</a>
        </p>

</body>

</html>