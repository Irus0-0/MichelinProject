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
		.reply {
			margin-top: 20px;
			border: 2px solid lightgray;
			padding: 15px;
			box-sizing: border-box;
		}

		.reply-form {
			padding: 10px;
		}

		.reply-form>form input[type="text"] {
			width: 200px;
		}

		.reply-form>form textarea {
			width: calc(100% - 100px);
			min-height: 40px;
		}

		.reply-form>form input[type="submit"] {
			width: 80px;
			height: 40px;
			transform: translatey(-40%);
		}

		.reply-form>form>div:not(:last-child) {
			margin-bottom: 5px;
		}

		.reply-list>table {
			border: none;
		}

		.reply-list>table th {
			display: none;
		}

		.reply-list>table td {
			border: none;
		}

		.reply-list>table tr:nth-child(2n+1) {
			background-color: rgba(0, 0, 0, 0.06);
		}

		.reply-list>table td:first-child {
			font-weight: bold;
		}

		.reply-list>table td:first-child::after {
			content: " : ";
			font-weight: bold;
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


	<div class="con reply">
		<h1 class="">댓글 입력</h1>
		<section class="reply-form">
			<form action="/cmmichelin/write" method="post">
				<div>
					<input type="hidden" name="board_num" value="${michelin.board_num}">

					# 작성자: <input type="text" name="cm_writer">${cmmichelin.writer}<br>
					# 내용: <br>
				</div>
				<div>
					<textarea rows="5" cols="30" name="cm_content">${cmmichelin.content}</textarea>
					<br>
					<input type="submit" value="등록">
				</div>
			</form>
		</section>

		<h1>댓글 목록</h1>
		<section class="reply-list table-common">
			<table border="1">
				<colgroup>
					<col width="100px">
				</colgroup>
				<thead>
					<tr>
						<td>작성자</td>
						<td>댓글내용</td>
						<td>비고</td>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="cmMichelin" items="${cmMichelin}">
						<tr>
							<td>${cmMichelin.cm_writer}</td>
							<td>${cmMichelin.cm_content}</td>
							<td>
								<a
									href="/cmmichelin/delete?board_num=${michelin.board_num}&cm_num=${cmMichelin.cm_num}">[삭제]</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>

</body>

</html>