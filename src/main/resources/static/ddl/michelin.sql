
CREATE SEQUENCE SEQ_MICHELIN;

CREATE TABLE michelin (
    board_num NUMBER(10), --글번호
    writer VARCHAR2(20) NOT NULL, --작성자
    title VARCHAR2(30) NOT NULL, --제목
    content VARCHAR2(40), --후기
    star NUMBER(3,1) NOT NULL, --별점
    leg_date DATE DEFAULT sysdate NOT NULL,  --작성날짜
    comment_cnt NUMBER(5) DEFAULT 0 NOT NULL, --댓글 수

    CONSTRAINT pk_michelin PRIMARY KEY (board_num)
);

CREATE SEQUENCE SEQ_cm_michelin;

CREATE TABLE cm_michelin (
     board_num NUMBER(10), --글번호
     cm_num NUMBER(10), --댓글 번호
     cm_writer VARCHAR2(20) NOT NULL, --작성자
     cm_content VARCHAR2(40) NOT NULL, --댓글내용

     CONSTRAINT pk_cm_michelin PRIMARY KEY (cm_num),
     CONSTRAINT fk_board_num FOREIGN KEY (board_num) REFERENCES michelin (board_num)
);

-- 페이징
SELECT
    board_no, writer, title, content
FROM
    (SELECT /*+INDEX_DESC(board pk_board)*/
        rownum rn, board_no, writer, title, content
    FROM board
    WHERE rownum <= 10)
WHERE rn > 0
;

--한줄평 컬럼추가
ALTER TABLE michelin
ADD one_cm VARCHAR2(40) NOT NULL;