package com.spring.mvc.web.michelin.repository;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface cmMichelinMapper {

    //댓글 작성
    void cmSave(int board_num, String cm_writer, String cm_content);

    //댓글 삭제
    void cmRemove(int board_num, int cm_num);
}
