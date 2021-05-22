package com.spring.mvc.web.michelin.repository;

import com.spring.mvc.web.michelin.domain.CmMichelin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface cmMichelinMapper {

    //댓글 작성
    void cmSave(int board_num, String cm_writer, String cm_content);

    //댓글 삭제
    void cmRemove(int board_num, int cm_num);

    //댓글 삭제
    void cmRemoveAll(int board_num);

    //댓글 전체보기
    List<CmMichelin> findAll(int board_num);
}
