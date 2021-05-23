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
		html {
			font-family: "Noto Sans KR", sans-serif;
		}

		/* 노말라이즈 */
		body, ul, li, h1, h2, h3, h4, h5, h6 {
			margin: 0;
			padding: 0;
			list-style: none;
		}

		a:link {
			color: lightblue;
		}

		/* 라이브러리 */
		.con {
			margin: 0 auto;
		}

		.img-box>img {
			width: 100%;
			display: block;
		}

		.row::after {
			content: "";
			display: block;
			clear: both;
		}

		.cell {
			float: left;
			box-sizing: border-box;
		}

		.cell-right {
			float: right;
			box-sizing: border-box;
		}

		.margin-0-auto {
			margin: 0 auto;
		}

		.block {
			display: block;
		}

		.inline-block {
			display: inline-block;
		}

		.text-align-center {
			text-align: center;
		}

		.line-height-0-ch-only {
			line-height: 0;
		}

		.line-height-0-ch-only>* {
			line-height: normal;
		}

		.relative {
			position: relative;
		}

		.absolute-left {
			position: absolute;
			left: 0;
		}

		.absolute-right {
			position: absolute;
			right: 0;
		}

		.absolute-middle {
			position: absolute;
			top: 50%;
			transform: translateY(-50%);
		}

		/* 커스텀 */
		/* 반응형 레이아웃 */
		.con {
			max-width: 800px;
		}

		.con-min-width {
			min-width: 320px;
		}

		.top-menu a {
			text-decoration: none;
			color: gray;
			font-weight: bold;
			font-size: 1.2rem;
		}

		html, body { 
			overflow-x: hidden;
		}

		.table-common>table {
            width: 70%;
            text-align: center;
            border-collapse: collapse;
            margin: auto;
        }

		h1.con {
 			 margin-left: 45%;
		}

        .table-common>table th, .table-common>table td {
            border: 1px solid black;
            padding: 5px;
        }  

		.article-list table {
            border:none;   
            border-top:2px solid lightgray;
            border-bottom:2px solid lightgray;
        }

        .article-list > table th, .article-list > table td {
            border:none;
        }

        .article-list > table td {
            border-bottom:1px solid lightgray;
        }

        .article-list > table thead {
            border-bottom:2px solid lightgray;
            background-color:#F5F5F5;
        }

        .article-detail {
            border:2px solid lightgray;
        }

        .article-detail > table {
            border:none;
            width:calc(100% - 100px);
        }

        .article-detail > table th, .article-detail > table td {
            border:none;
        }

        .article-detail > table tr:not(:last-child) {
            border-bottom:1px solid lightgray;
        }

        .article-detail > table tr:not(.article-body), .article-detail > table tr:not(.article-body) > td{
            height:20px;
            font-size:0.8rem;
        }

        .article-detail > table tr.article-title > td {
            height:40px;
            font-weight:bold;
            font-size:1.2rem;
        }

        .article-detail > table td:last-child {
            padding-right:100px;
        }

        .article-detail > .article-writer {
            width:100px;
            height:102px;
            background-color:lightgray;
            border-bottom:1px solid lightgray;
            text-align:center;
        }

        .reply {
            margin-top:20px;
            border:2px solid lightgray;
            padding:15px;
            box-sizing:border-box;
        }

        .reply-form {
            padding:10px;
        }

        .reply-form > form input[type="text"] {
            width:200px;
        }

        .reply-form > form textarea {
            width:calc(100% - 100px);
            min-height:40px;
        }

        .reply-form > form input[type="submit"] {
            width:80px;
            height:40px;
            transform:translatey(-40%);
        }

        .reply-form > form > div:not(:last-child) {
            margin-bottom:5px;
        }

        .reply-list > table {
            border:none;
        }

        .reply-list > table th {
            display:none;
        }

        .reply-list > table td {
            border:none;
        }

        .reply-list > table tr:nth-child(2n+1) {
            background-color:rgba(0,0,0,0.06);
        }

        .reply-list > table td:first-child {
            font-weight:bold;
        }

        .reply-list > table td:first-child::after {
            content:" : ";
            font-weight:bold;
        }
	</style>
</head>

<body>
	<br>
	<br>
	<h1 class="con">${michelin.board_num}번 평가!</h1>
	<br>
    <section class="article-detail table-common con row">
        <div class="article-writer cell">

        </div>
        <table class="cell" border="1">
            <colgroup>
                <col width="100px">
            </colgroup>
            <tbody>
                <tr class="article-title">
                    <th>${michelin.board_num}번</th>
                    <td colspan="3">${michelin.title}</td>
                </tr>
                <tr class="article-info">
                    <th>별점</th>
                    <td>${michelin.star}</td>
                    <th>한줄평</th>
                    <td>${michelin.one_cm}</td>
					<th>작성자</th>
                    <td>${michelin.writer}</td>
                </tr>
                <tr class="article-body">
                    <td colspan="4">${michelin.content}</td>
                </tr>
            </tbody>
        </table>
    </section>

	<!-- <h1> ${michelin.board_num}번 평가!</h1> -->

	<!-- <p> -->
		<!-- # 글번호: ${michelin.board_num}<br> -->
		<!-- # 작성자: ${michelin.writer}<br> -->
		<!-- # 제목: ${michelin.title}<br> -->
		<!-- # 별점: ${michelin.star}<br> -->
		<!-- <%-- # 추천수:${michelin.recommendation} <br>
	# 조회수:${michelin.view} <br> --%> -->
		<!-- # 한줄평: ${michelin.one_cm}<br> -->
		<!-- # 내용: <br>
		<textarea rows="5" cols="30" disabled>${michelin.content}</textarea>
	</p> -->

	<a href="/michelin/list">글 목록보기</a>&nbsp;
	<a href="/michelin/modify?board_num=${michelin.board_num}">글 수정하기</a>
	<%-- <a href="/michelin/recommendation?board_num=${michelin.board_num}">글 추천</a> --%>

	<!-- <form action="/cmmichelin/write" method="post">
		<input type="hidden" name="board_num" value="${michelin.board_num}">
        <p>
            # 작성자: <input type="text" name="cm_writer">${cmmichelin.writer}<br>
            # 내용: <br>
            <textarea rows="5" cols="30" name="cm_content">${cmmichelin.content}</textarea>
            <br>
            <input type="submit" value="등록">
        </p>
    </form> -->

    <!-- <h4>댓글보기</h4>
    <table border="1">
        <tr>
            <td>작성자</td>
            <td>댓글내용</td>
			<td>비고</td>
        </tr>

		<a href="#">${List}</a>
		<c:forEach var="cmMichelin" items="${cmMichelin}">
            <tr>
				<td>${cmMichelin.cm_writer}</td>
                <td>${cmMichelin.cm_content}</td>
				<td>
                    <a href="/cmmichelin/delete?board_num=${michelin.board_num}&cm_num=${cmMichelin.cm_num}">[삭제]</a>
                </td>
			</tr>
		</c:forEach> -->
		

</body>

</html>