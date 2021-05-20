package com.spring.mvc.web.board.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Board {

    private static int sequence;

    private int board_num;
    private String writer;
    private String title;
    private String content;
    private int star;
    private Date leg_date;
    private int comment_cnt;

    public Board() {
        this.board_num = ++sequence;
    }

    public Board(String writer, String title, String content, int star) {
        this();
        this.writer = writer;
        this.title = title;
        this.content = content;
        this.star = star;
    }
}
