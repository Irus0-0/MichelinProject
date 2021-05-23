package com.spring.mvc.web.michelin.controller;

import com.spring.mvc.web.michelin.domain.Michelin;
import com.spring.mvc.web.michelin.service.cmMichelinService;
import com.spring.mvc.web.michelin.service.michelinService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
public class IndexController {
    private final michelinService michelinService;

    @Autowired
    public IndexController(michelinService michelinService) {
        this.michelinService = michelinService;
    }
//    //아직 오류 있음
//    @GetMapping("")
//        public String index(Model model) {
//        List<Michelin> starMichelinList = michelinService.getStarMichelinList();
//        model.addAttribute("starRank",starMichelinList);
//        log.info(starMichelinList);
//        return "redirect:/index.html";
//    }

    @GetMapping("/content")
    public String testing(int board_num, Model model) {
        Michelin oneMichelinList = michelinService.getOneMichelinList(board_num);
        model.addAttribute("michelin", oneMichelinList);
        log.info(oneMichelinList);
        return "/michelin/content";
    }



}
