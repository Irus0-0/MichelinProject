<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="/css/main.css">
    <title>Insert title here</title>
    <style>
		.pagination {
			width: 60%;
			margin-top: 10px;
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
	</style>

    <link rel="stylesheet" href="/css/main.css">
</head>

<body>

    <c:if test="${articles.size() <= 0}">
        <p>게시물이 존재하지 않습니다.</p>
    </c:if>

    <h1>미슐랭 목록</h1>

    <li>총 게시글 수 : ${count}개</li>


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
                    <a href="/michelin/content?board_num=${michelin.board_num}">${michelin.one_cm}</a>
                </td>
                <td>${michelin.star}</td>
                <td>${michelin.leg_date}</td>
                <td>
                    <a href="/michelin/delete?board_num=${michelin.board_num}">[삭제]</a>
                </td>
            </tr>
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
    </table>

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

    <p>
        <a href="/michelin/write">게시글 작성하기</a>
    </p>

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