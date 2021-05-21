package com.spring.mvc.web.michelin.service;


import com.spring.mvc.web.common.paging.Criteria;
import com.spring.mvc.web.michelin.domain.Michelin;
import com.spring.mvc.web.michelin.repository.michelinMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Log4j2
public class michelinService {

    private final michelinMapper michelinRepository;

//    게시글 목록 가져오기
    public List<Michelin> getArticles(Criteria criteria) {
        return michelinRepository.getArticles(criteria);
    }

//글 쓰기
    public void register(Michelin michelin) {
        michelinRepository.save(michelin);
    }

    //전체보기
    public List<Michelin> getMichelinList() {
        return michelinRepository.findAll();
    }

    //별점 조회 보기
    public List<Michelin> getStarMichelinList(){
        return michelinRepository.starFindAll();
    }
    //삭제
    public void delete(int board_num) {
        michelinRepository.remove(board_num);
    }

    //하나 찾기
    public Michelin getOneMichelinList(int board_num) {
        return michelinRepository.findOne(board_num);
    }

    //수정
    public void modify(int board_num, String title, String content, String writer, double star, String one_cm) {
        michelinRepository.modify(board_num, title, content, writer, star, one_cm);
    }

//    //총 게시물 수 확인
//    public int getTotal(){
//        return michelinRepository.getTotalCount();
//    }

    //게시글 건수 조회 기능
    public int getCount(){
        return michelinRepository.getCount();
    }
}
