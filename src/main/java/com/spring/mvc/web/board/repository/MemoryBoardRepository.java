/*
package com.spring.mvc.web.board.repository;

import com.spring.mvc.web.board.domain.Board;
import com.spring.mvc.web.score.domain.Score;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Log4j2
public class MemoryBoardRepository implements BoardRepository {

    private static Map<Integer, Board> boardMap = new HashMap<>();

    static {
        boardMap.put(1, new Board("글쓴이", "제목", "내용"));
        boardMap.put(2, new Board("글쓴이2", "제목2", "내용2"));
        boardMap.put(3, new Board("글쓴이3", "제목3", "내용3"));
    }

    @Override
    public void save(Board board) {
        boardMap.put(board.getBoardNo(), board);
    }

    @Override
    public void remove(int boardNo) {
        boardMap.remove(boardNo);
    }

    @Override
    public Board findOne(int boardNo) {
        return boardMap.get(boardNo);
    }

    @Override
    public List<Board> findAll() {
        List<Board> boardList = new ArrayList<>();

        //map 의 score 객체들을 모두 뽑아 리스트에 담음
        for (int key : boardMap.keySet()) {
            boardList.add(boardMap.get(key));
        }
        return boardList;
    }

    @Override
    public void modify(int boardNo, String title, String content, String writer) {
        Board one = findOne(boardNo);
        one.setContent(content);
        one.setTitle(title);
        one.setWriter(writer);
    }

    @Override
    public void addview(int boardNo) {
        findOne(boardNo).setView(findOne(boardNo).getView() + 1);
    }

    @Override
    public void minusview(int boardNo) {
        findOne(boardNo).setView(findOne(boardNo).getView() - 1);
    }

    @Override
    public void recommendation(int boardNo) {
        findOne(boardNo).setRecommendation(findOne(boardNo).getRecommendation() + 1);
    }


}
*/
