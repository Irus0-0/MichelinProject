package com.spring.mvc.web.michelin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CmMichelin {

    private static int sequence;

    private int  board_num;
    private int cm_num;
    private String cm_writer;
    private String cm_content;

    public CmMichelin() {
        this.board_num = ++sequence;
    }

    public CmMichelin(int board_num, String cm_writer, String cm_content) {
        this();
        this.board_num = board_num;
        this.cm_writer = cm_writer;
        this.cm_content = cm_content;
    }

}
