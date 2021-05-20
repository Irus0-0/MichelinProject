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

    <h1>게시글 등록</h1>

    <form action="/board/write" method="post">
        <p>
            # 작성자: <input type="text" name="writer">${michelin.writer}<br>
            # 제목: <input type="text" name="title">${michelin.title}<br>
            # 별점: <input type="text" name="star">${michelin.star}<br>
            # 내용: <br>
             <textarea rows="5" cols="30" name="content">${michelin.content}</textarea>
            <br>
            <input type="submit" value="등록">
        </p>
    </form>
    
    <a href="/board/list">글 목록보기</a>

</body>
</html>