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
			max-width: 750px;
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
            height:30px;
            font-size:0.8rem;
        }

        .article-detail > table tr.article-title > td {
            height:40px;
            font-weight:bold;
            font-size:1.2rem;
        }

        .article-detail > table td:last-child {
            padding-right:30px;
        }

        .article-detail > .article-writer {
            width:100px;
            height:90px;
            background-color:lightgray;
            border-bottom:1px solid lightgray;
            text-align:center;
        }

		.link {
			margin-left: 45%;
		}

		.link > a{
			text-decoration: none;
			color: #000;
		}

		.link > a:hover {
			color: yellowgreen;
			font: bold;
		}

		.content {
			width: 350px;
			height: 200px;
		}

		.content > div {
			display:flex;
			height:200px;
			text-align: center;
		}

		.content > div > .textcontent{
			width: 400px;
			margin: 15px 15px;
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
            width:calc(40% - 90px);
            min-height:40px;
        }

		.comment {
			display: flex;
		}

		.cmtitle {
			margin-right: 10px;
		}

        .reply-form > form input[type="submit"] {
            width:100px;
            height:40px;
			margin-left: 90px;
            transform:translatey(100%);
        }

        .reply-form > form > div:not(:last-child) {
            margin-bottom:5px;
        }

		.reply-list > table {
            border: none;
           width: 700px;
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
            content:"";
            font-weight:bold;
        }

		td.link {
			text-decoration: none;
			color: #2c2c2c;
		}

		td.link:hover {
			font-weight: bold;
			color: yellowgreen;
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
                    <td colspan="5">${michelin.title}</td>
                </tr>
                <tr class="article-info">
                    <th>한줄평</th>
                    <td>${michelin.one_cm}</td>
                    <th>별점</th>
                    <td>${michelin.star}</td>
					<th>작성자</th>
                    <td>${michelin.writer}</td>
                </tr>
                <tr class="article-body">
                    <td colspan="4">
                      <div class="content">
                        <div "content_text">
                          <div class="textcontent">
                            ${michelin.content}
                          </div>
                        </div>
                      </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </section>
	<!-- 댓글입력 영역 -->
	<br>
	<div class="con reply">
		<h4 class="">댓글 입력</h4>
		<section class="reply-form">
		   <form action="/cmmichelin/write" method="post">
			  <div class="comment">
				 <input type="hidden" name="board_num" value="${michelin.board_num}">
				 <span class="cmtitle">작성자</span> <textarea rows="5" cols="30" name="cm_writer">${cmmichelin.writer}</textarea>
				 <span class="cmtitle">내용</span><textarea rows="5" cols="30" name="cm_content">${cmmichelin.content}</textarea>
				 <input type="submit" value="등록">
				 <br>
			  </div>
		   </form>
		</section>
		<br>
		<h4>댓글 목록</h4>
		<br>
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
					   <td class="link">
						  <a
							 href="/cmmichelin/delete?board_num=${michelin.board_num}&cm_num=${cmMichelin.cm_num}">[삭제]</a>
					   </td>
					</tr>
				 </c:forEach>
			  </tbody>
		   </table>
		</section>
	 </div>

	 <br>

	 <div class="link">
		<a href="/michelin/list">글 목록보기</a>&nbsp;
		<a href="/michelin/modify?board_num=${michelin.board_num}">글 수정하기</a>
	 </div>
	 <br>
	 <br>
	 <br>
	 <br>
	 <br>
	 <br>
	 <br>
		

</body>

</html>