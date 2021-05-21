package com.spring.mvc.web.michelin.controller;

import com.spring.mvc.web.michelin.domain.CmMichelin;
import com.spring.mvc.web.michelin.service.cmMichelinService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/cmmichelin") //url이 같으면 안되서 오류발생, 다르게 해줘야함
public class cmMichelinController {

    private final cmMichelinService cmMichelinService;

    @Autowired
    public cmMichelinController(cmMichelinService cmMichelinService) {
        this.cmMichelinService = cmMichelinService;
    }

    //댓글작성요청
    @PostMapping("/write")
    public String write(CmMichelin cmMichelin) {

        cmMichelinService.register(cmMichelin);
        return "redirect:/michelin/content?board_num=" + cmMichelin.getBoard_num();
    }

    //삭제 진행
    @GetMapping("/delete")
    @ResponseBody
    public String delete(int board_num, int cm_num) {
        cmMichelinService.cmdelete(board_num, cm_num);
        return "redirect:/michelin/content";
    }

    //댓글 화면
    @GetMapping("/list")
    public String list(Model model) {
        List<CmMichelin> cmMichelinList = cmMichelinService.getCmMichelinList();
        model.addAttribute("List", cmMichelinList);
        return "/michelin/list";
    }

}
