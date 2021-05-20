package com.spring.mvc.web.board.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.Date;

@Getter
@Setter
@ToString
public class cmMichelin {

    private int  board_num;
    private int  cm_num;
    private String cm_writer;
    private String cm_content;

    public cmMichelin(int board_num, String cm_writer, String cm_content) {
        this.board_num = board_num;
        this.cm_writer = cm_writer;
        this.cm_content = cm_content;
    }

}
