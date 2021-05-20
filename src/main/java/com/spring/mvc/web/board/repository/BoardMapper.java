package com.spring.mvc.web.board.repository;

import com.spring.mvc.web.board.domain.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {
    //게시글 저장 기능
    void save(Board board);

    //게시글 삭제 기능
    void remove(int boardNo);

    //개별 글 조회 기능
    Board findOne(int boardNo);

    //전체 정보 조회 기능
    List<Board> findAll();

    //글 수정
    void modify(int boardNo, String title, String content, String writer);

    //조회수 증가
    void addview(int boardNo);

    //조회수 감소
    void minusview(int boardNo);

    //조회수 증가
    void recommendation(int boardNo);
}
