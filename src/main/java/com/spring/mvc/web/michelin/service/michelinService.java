package com.spring.mvc.web.michelin.service;


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


    public void register(Michelin michelin) {
        michelinRepository.save(michelin);
    }


    public List<Michelin> getBoardList() {
        return michelinRepository.findAll();
    }


    public void delete(int board_num) {
        michelinRepository.remove(board_num);
    }


    public Michelin getOneScoreList(int board_num) {
        return michelinRepository.findOne(board_num);
    }

    //수정
    public void modify(int board_num, String title, String content, String writer, int star) {
        michelinRepository.modify(board_num, title, content, writer, star);
    }


}
