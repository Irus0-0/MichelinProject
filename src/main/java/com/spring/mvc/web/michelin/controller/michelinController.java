package com.spring.mvc.web.michelin.controller;

import com.spring.mvc.web.common.paging.Criteria;
import com.spring.mvc.web.common.paging.PageMaker;
import com.spring.mvc.web.michelin.domain.CmMichelin;
import com.spring.mvc.web.michelin.domain.Michelin;
import com.spring.mvc.web.michelin.service.cmMichelinService;
import com.spring.mvc.web.michelin.service.michelinService;

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
@RequestMapping("/michelin")
public class michelinController {

    private final michelinService michelinService;
    private final cmMichelinService cmMichelinService;

    @Autowired
    public michelinController(michelinService michelinService, cmMichelinService cmMichelinService) {
        this.michelinService = michelinService;
        this.cmMichelinService = cmMichelinService;
    }


    //메인 화면
    @GetMapping("/list")
    public String list(Criteria criteria, Model model) {
//        List<Michelin> michelinList = michelinService.getMichelinList(criteria);
        model.addAttribute("List",michelinService.getArticles(criteria));
        model.addAttribute("count",michelinService.getCount());
        model.addAttribute("pageMaker", new PageMaker(criteria, michelinService.getCount()));
        return "/michelin/list";
    }
    //별점 정렬 화면
    /*@GetMapping("list/star")
    public String starList(Model model) {
        List<Michelin> michelinList = michelinService.getStarMichelinList();
        model.addAttribute("List", michelinList);
        return "/michelin/list";
    }*/

    //작성화면
    @GetMapping("/write")
    public String write() {
        return "/michelin/write";
    }

    //작성 요청
    @PostMapping("/write")
    public String write(Michelin michelin) {
        michelinService.register(michelin);
        return "redirect:/michelin/list";
    }

    //삭제 진행
    @GetMapping("/delete")
    public String delete(int board_num) {
        cmMichelinService.cmDeleteAll(board_num);
        michelinService.delete(board_num);
        return "redirect:/michelin/list";
    }

    //글 내용 보기
    @GetMapping("/content")
    public String content(int board_num,Model model) {
        Michelin oneMichelinList = michelinService.getOneMichelinList(board_num);
        List<CmMichelin> cmMichelinList = cmMichelinService.getCmMichelinList(board_num);
        model.addAttribute("michelin", oneMichelinList);
        model.addAttribute("cmMichelin", cmMichelinList);
        return "/michelin/content";
    }

    //글 수정 하기
    @GetMapping("/modify")
    public String modify(int board_num, Model model) {
        Michelin oneMichelinList = michelinService.getOneMichelinList(board_num);
        model.addAttribute("michelin", oneMichelinList);
        return "/michelin/modify";
    }

    //수정 전송
    @PostMapping("/modify")
    public String modify(int board_num, String title, String content, String writer, double star, String one_cm) {
        michelinService.modify(board_num, title, content, writer, star, one_cm);

        return "redirect:/michelin/content?board_num=" + board_num;
    }


}
