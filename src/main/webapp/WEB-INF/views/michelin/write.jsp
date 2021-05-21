<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        .star_rating {
            font-size: 0;
            letter-spacing: -4px;
        }

        .star_rating a {

            font-size: 22px;

            letter-spacing: 0;

            display: inline-block;

            margin-left: 5px;

            color: #ccc;

            text-decoration: none;

        }

        .star_rating a:first-child {
            margin-left: 0;
        }

        .star_rating a.on {
            color: #777;
        }
    </style>
</head>

<body>

    <h1>평가 등록</h1>

    <form action="/michelin/write" method="post">
        <p>
            # 작성자: <input type="text" name="writer">${michelin.writer}<br>
            # 제목: <input type="text" name="title">${michelin.title}<br>
            # 별점: <input type="number" min="0.0" max="10.0" step="0.1" name="star">${michelin.star}★<br>
            # 내용: <br>
            <textarea rows="5" cols="30" name="content">${michelin.content}</textarea>
            <br>
            <input type="submit" value="등록">
        </p>
    </form>

    <a href="/michelin/list">글 목록보기</a>
    
    
</body>

</html>