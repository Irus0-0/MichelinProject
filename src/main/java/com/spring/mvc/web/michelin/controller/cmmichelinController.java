package com.spring.mvc.web.michelin.controller;

import com.spring.mvc.web.michelin.service.cmmichelinService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/cmmichelin")
public class cmmichelinController {

    private final cmmichelinService cmmichelinService;

    @Autowired
    public cmmichelinController(cmmichelinService cmmichelinService) {
        this.cmmichelinService = cmmichelinService;
    }



}
