package com.spring.mvc.web.michelin.repository;



import com.spring.mvc.web.michelin.domain.Michelin;

import java.util.List;

public interface MichelinRepository {

    //게시글 저장 기능
    void save(Michelin michelin);

    //게시글 삭제 기능
    void remove(int board_num);

    //개별 글 조회 기능
    Michelin findOne(int board_num);

    //전체 정보 조회 기능
    List<Michelin> findAll();

    //글 수정
    void modify(int board_num, String title, String content, String writer, int star);



}
