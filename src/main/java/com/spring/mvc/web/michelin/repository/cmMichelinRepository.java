package com.spring.mvc.web.michelin.repository;

public interface cmMichelinRepository {

    //댓글 작성
    void cmSave(int board_num, String cm_writer, String cm_content);

    //댓글 삭제
    void cmRemove(int board_num, int cm_num);

}
