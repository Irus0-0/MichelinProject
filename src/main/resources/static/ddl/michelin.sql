
CREATE SEQUENCE SEQ_MICHELIN;

CREATE TABLE michelin (
    board_num NUMBER(10), --글번호
    writer VARCHAR2(20) NOT NULL, --작성자
    title VARCHAR2(30) NOT NULL, --제목
    content VARCHAR2(40), --후기
    star NUMBER(5) NOT NULL, --별점
    leg_date DATE DEFAULT sysdate NOT NULL,  --작성날짜
    comment_cnt NUMBER(5) DEFAULT 0 NOT NULL, --댓글 수

    CONSTRAINT pk_michelin PRIMARY KEY (board_num)
);

CREATE TABLE cm_michelin (
     board_num NUMBER(10), --글번호
     cm_num NUMBER(10), --댓글 번호
     cm_writer VARCHAR2(20) NOT NULL, --작성자
     cm_content VARCHAR2(40), --댓글내용

     CONSTRAINT fk_board_num FOREIGN KEY (board_num) REFERENCES michelin (board_num)
);