<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

    <head>
     <style>
		.pagination {
			width: 60%;
			margin-top: 10px;
            margin-left: 650px;
			list-style: none;
			display: flex;
		}

		.pagination>li {
			justify-content: flex-end;
			margin-right: 5px;
		}

		.pagination>li>a {
			text-decoration: none;
			color: black;
		}

		.pagination>li>a:hover {
			color: yellowgreen;
		}

		.pagination>li.active>a {
			font-weight: bold;
			color: orangered;
			font-size: 1.1em;
		}

        .toph1{
            margin-left: 45%;
        }

        .totalnum {
            margin-left: 220px;
            list-style: none;
            font-size: 16px;
        }

        .table-common>table {
            width: 70%;
            text-align: center;
            border-collapse: collapse;
            margin: auto;
        }

        .table-common>table th, .table-common>table td {
            border: 1px solid black;
            padding: 10px;
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

        a.write {
            margin-left: 1090px;
            font-size: 16px;
            text-decoraiton: none;
            color: #808080;
        }

        a.write:hover {
            margin-left: 1090px;
            font-size: 16px;
            text-decoraiton: none;
            color: yellowgreen;
            font-weight: bold;
        }

        a {
            text-decoration: none;
            color: #808080;
        }

        a:hover {
            text-decoration: none;
            color: yellowgreen;
            font-weight: bold;
        }

        
	</style>

    <!-- <link rel="stylesheet" href="/css/main.css"> -->
</head>

<body>

    <c:if test="${articles.size() <= 0}">
        <p>게시물이 존재하지 않습니다.</p>
    </c:if>

    <h1 class="toph1">미슐랭 리스트</h1>

    <li class="totalnum">총 게시글 수 : ${count}개</li>
    <br>
    <section class="article-list table-common con">
      <table border="1"> 
            <thead>
                <tr>
                    <th>글번호</th>
                    <th>작성자</th>
                    <th>상호명</th>
                    <th>한줄평</th>
                    <th>별점</th>
                    <th>작성일</th>
                    <th>비고</th>
                </tr> 
            </thead>
            <tbody>
                <c:forEach var="michelin" items="${List}">
                    <tr>
                        <td>${michelin.board_num}</td>
                        <td>${michelin.writer}</td>
                        <td>${michelin.title}</td>
                        <td>
                            <a href="/michelin/content?board_num=${michelin.board_num}">${michelin.one_cm}</a>
                        </td>
                        <td>${michelin.star}</td>
                        <td><fmt:formatDate pattern="MM월 dd일 HH시" value="${michelin.leg_date}" /></td>
                        <td>
                            <a href="/michelin/delete?board_num=${michelin.board_num}">[삭제]</a>
                        </td>
                    </tr>            
                </c:forEach>
            </tbody>
        </table> 
    </section> 
    <br>
    <p>
        <a href="/michelin/write" class="write">게시글 작성하기</a>
    </p>    

        <!-- <c:forEach var="michelin" items="${List}">
            <tr>
                <td>${michelin.board_num}</td>
                <td>${michelin.writer}</td>
                <td>${michelin.title}</td>
                <td>
                    <a href="/michelin/content?board_num=${michelin.board_num}">${michelin.one_cm}</a>
                </td>
                <td>${michelin.star}</td>
                <td><fmt:formatDate pattern="MM월 dd일 HH시" value="${michelin.leg_date}" /></td>
                <td>
                    <a href="/michelin/delete?board_num=${michelin.board_num}">[삭제]</a>
                </td>
            </tr>            
        </c:forEach> -->
 

    <!-- 페이지 영역 -->
    <ul class="pagination">
        <c:if test="${pageMaker.prev}">
            <li>
                <a href="/michelin/list?page=${pageMaker.beginPage - 1}">[이전]</a>
            </li>
        </c:if>


        <!-- li*5>a{[$]} -->
        <c:forEach var="i" begin="${pageMaker.beginPage}" end="${pageMaker.endPage}" step="1">
            <li><a href="/michelin/list?page=${i}">[${i}]</a></li>
        </c:forEach>

        <c:if test="${pageMaker.next}">
            <li>
                <a href="/michelin/list?page=${pageMaker.endPage + 1}">[다음]</a>
            </li>
        </c:if>
    </ul>

    <!-- <p>
        <a href="/michelin/write" class="write">게시글 작성하기</a>
    </p> -->

    <script>
        //현재 위치한 페이지넘버에 클래스 active를 부여하는 함수 정의
        function appendPageActive(curPageNum) {
            const $ul = document.querySelector('.pagination');
            for (let $li of [...$ul.children]) {
                if ($li.dataset.page === curPageNum) {
                    $li.classList.add('active');
                }
            }
        }
        (function() {
            appendPageActive('${pageMaker.criteria.page}');
        }());
    </script>

</body>

</html>