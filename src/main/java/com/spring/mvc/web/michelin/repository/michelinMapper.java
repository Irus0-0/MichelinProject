package com.spring.mvc.web.michelin.repository;

import com.spring.mvc.web.common.paging.Criteria;
import com.spring.mvc.web.michelin.domain.Michelin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface michelinMapper {


    //게시글 목록 가져오기

    //1. 페이징 없는 버전
    List<Michelin> getMichelin();

    //2. 페이징 쿼리 추가
    List<Michelin> getArticles(Criteria criteria);

    //글 저장 기능
    void save(Michelin michelin);

    //글 삭제 기능
    void remove(int board_num);

    //개별 글 조회 기능
    Michelin findOne(int board_num);

    //1. 전체 정보 조회 기능
    List<Michelin> findAll();

    //전체 정보 조회 - 별높은순
    List<Michelin> starFindAll();

    //글 수정
    void modify(int board_num, String title, String content, String writer, double star , String one_cm);

    //총 게시글 조회기능
    int getCount();

//    //총 게시물 수 조회
//    int getTotalCount();
}