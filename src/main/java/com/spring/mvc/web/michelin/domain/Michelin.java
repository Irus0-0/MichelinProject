package com.spring.mvc.web.michelin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class Michelin {

    private static int sequence;

    private int board_num;
    private String writer;
    private String title;
    private String content;
    private double star;
    private Date leg_date;
    private int comment_cnt;
    private String one_cm;

    public Michelin() {
        this.board_num = ++sequence;
    }

    public Michelin(String writer, String title, String content, double star, String one_cm) {
        this();
        this.writer = writer;
        this.title = title;
        this.content = content;
        this.star = star;
        this.one_cm = one_cm;
    }
}
