package com.spring.mvc.web.board.service;


import com.spring.mvc.web.board.domain.Board;
import com.spring.mvc.web.board.repository.BoardMapper;
import com.spring.mvc.web.board.repository.BoardRepository;
import com.spring.mvc.web.score.domain.Score;
import com.spring.mvc.web.score.repository.ScoreRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Log4j2
public class BoardService {

//    private final BoardRepository boardRepository;

    private final BoardMapper boardRepository;
//    @Autowired
//    public BoardService(BoardRepository boardRepository) {
//        this.boardRepository = boardRepository;
//    }

    public void register(Board board) {
        boardRepository.save(board);
    }


    public List<Board> getBoardList() {
        return boardRepository.findAll();
    }


    public void delete(int boardNo) {
        boardRepository.remove(boardNo);
    }


    public Board getOneScoreList(int boardNo) {
        return boardRepository.findOne(boardNo);
    }

    //수정
    public void modify(int boardNo, String title, String content, String writer) {
//        getOneScoreList(boardNo).setContent(content);
//        getOneScoreList(boardNo).setTitle(title);
//        getOneScoreList(boardNo).setWriter(writer);
        boardRepository.modify(boardNo, title, content, writer);
    }

    //조회수 증가
    public void addView(int boardNo) {
//        getOneScoreList(boardNo).setView(getOneScoreList(boardNo).getView() + 1);
        log.info("up count!!");
        boardRepository.addview(boardNo);
    }
    //조회수 감소
    public void minusView(int boardNo) {
//        getOneScoreList(boardNo).setView(getOneScoreList(boardNo).getView() - 1);
        boardRepository.minusview(boardNo);
    }

    //추천하기
    public void recommendation(int boardNo) {
        log.info("recommendation UP!!");
        boardRepository.recommendation(boardNo);
    }
}
