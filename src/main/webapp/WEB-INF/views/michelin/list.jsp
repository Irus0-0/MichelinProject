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

    <h1>미슐랭 목록</h1>
    <table border="1">
        <tr>
            <td>글번호</td>
            <td>작성자</td>
            <td>상호명</td>
            <td>한줄평</td>
            <td>별점</td>
            <td>작성일</td>
            <td>비고</td>


        </tr>

        <c:forEach var="michelin" items="${List}">
        <tr>
            <td>${michelin.board_num}</td>
            <td>${michelin.writer}</td>
            <td>${michelin.title}</td>
            <td>
                <a href="/michelin/content?board_num=${michelin.board_num}">${michelin.content}</a>
            </td>
            <td>${michelin.star}</td>
            <td>${michelin.leg_date}</td>

            <td>
                <a href="/michelin/delete?board_num=${michelin.board_num}">[삭제]</a>
            </td>
        </tr>
        </c:forEach>


        <p>
            <a href="/michelin/write">게시글 작성하기</a>
        </p>

</body>

</html>