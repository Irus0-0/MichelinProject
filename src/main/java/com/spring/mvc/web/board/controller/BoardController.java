package com.spring.mvc.web.board.controller;

import com.spring.mvc.web.board.domain.Board;
import com.spring.mvc.web.board.service.BoardService;
import com.spring.mvc.web.score.domain.Score;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/board")
public class BoardController {

    private final BoardService boardService;

    @Autowired
    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    //메인 화면
    @GetMapping("/list")
    public String list(Model model) {
        List<Board> boardList = boardService.getBoardList();
        model.addAttribute("List", boardList);
        return "/board/list";
    }

    //작성화면
    @GetMapping("/write")
    public String write() {
        return "/board/write";
    }

    //작성 요청
    @PostMapping("/write")
    public String write(Board board) {
        boardService.register(board);
        return "redirect:/board/list";
    }

    //삭제 진행
    @GetMapping("/delete")
    public String delete(int boardNo) {
        boardService.delete(boardNo);
        return "redirect:/board/list";
    }

    //글 내용 보기
    @GetMapping("/content")
    public String content(int boardNo, Model model) {
        Board oneBoardList = boardService.getOneScoreList(boardNo);
        model.addAttribute("board", oneBoardList);
        boardService.addView(boardNo);
        return "/board/content";
    }

    //글 수정 하기
    @GetMapping("/modify")
    public String modify(int boardNo, Model model) {
        Board oneScoreList = boardService.getOneScoreList(boardNo);
        model.addAttribute("board", oneScoreList);
        return "/board/modify";
    }

    //수정 전송
    @PostMapping("/modify")
    public String modify(int boardNo, String title, String content, String writer) {
        boardService.modify(boardNo,title,content,writer);
        boardService.minusView(boardNo);
        return "redirect:/board/content?boardNo=" + boardNo;
    }
    //글 추천하기
    @GetMapping("/recommendation")
    public String recommendation(int boardNo) {
        boardService.recommendation(boardNo);
        boardService.minusView(boardNo);
        return "redirect:/board/content?boardNo=" + boardNo;
    }


}
