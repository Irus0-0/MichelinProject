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
		div {
			display: flex;
		}
	</style>
</head>

<body>

	<h1> ${michelin.board_num}번 평가!</h1>

	<p>
		# 글번호: ${michelin.board_num}<br>
		# 작성자: ${michelin.writer}<br>
		# 제목: ${michelin.title}<br>
		# 별점: ${michelin.star}<br>
		<%-- # 추천수:${michelin.recommendation} <br>
	# 조회수:${michelin.view} <br> --%>
		# 한줄평: ${michelin.one_cm}<br>
		# 내용: <br>
		<textarea rows="5" cols="30" disabled>${michelin.content}</textarea>
	</p>

	<a href="/michelin/list">글 목록보기</a>&nbsp;
	<a href="/michelin/modify?board_num=${michelin.board_num}">글 수정하기</a>
	<%-- <a href="/michelin/recommendation?board_num=${michelin.board_num}">글 추천</a> --%>

	<form action="/michelin/write" method="post">
        <p>
            # 작성자: <input type="text" name="writer">${cmmichelin.writer}<br>
            # 내용: <br>
            <textarea rows="5" cols="30" name="content">${cmmichelin.content}</textarea>
            <br>
            <input type="submit" value="등록">
        </p>
    </form>

    <h4>댓글보기</h4>
    <table border="1">
        <tr>
            <td>댓글번호</td>
            <td>작성자</td>
            <td>댓글내용</td>
			<td>비고</td>
        </tr>

		<c:forEach var="cmmichelin" items="${List}">
            <tr>
                <td>${cmmichelin.board_num}</td>
				<td>${cmmichelin.board_num}</td>
                <td>${cmmichelin.writer}</td>
				<td>
                    <a href="/cmmichelin/delete?cm_num=${cmmichelin.cm_num}">[삭제]</a>
                </td>
			</tr>
		</c:forEach>

</body>

</html>