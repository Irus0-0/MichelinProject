package com.spring.mvc.web.board.repository;

import com.spring.mvc.web.board.domain.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    //글 저장 기능
    void save(Board board);

    //글 삭제 기능
    void remove(int board_num);

    //개별 글 조회 기능
    Board findOne(int board_num);

    //전체 정보 조회 기능
    List<Board> findAll();
    //전체 정보 조회 - 별높은순
    List<Board> starFindAll();

    //글 수정
    void modify(int board_num, String title, String content, String writer);


}
