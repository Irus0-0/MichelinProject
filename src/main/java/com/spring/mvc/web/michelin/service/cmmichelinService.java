package com.spring.mvc.web.michelin.service;

import com.spring.mvc.web.michelin.domain.CmMichelin;
import com.spring.mvc.web.michelin.domain.Michelin;
import com.spring.mvc.web.michelin.repository.cmMichelinMapper;
import com.spring.mvc.web.michelin.repository.cmMichelinRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Log4j2
public class cmmichelinService {

    private final cmMichelinMapper cmMichelinRepository;

    //댓글 쓰기
    public void register(CmMichelin cmmichelin) {
        cmMichelinRepository.cmSave(cmmichelin.getBoard_num(), cmmichelin.getCm_writer(), cmmichelin.getCm_content());
    }

    //댓글 삭제
    public void delete(int board_num, int cm_num) {
        cmMichelinRepository.cmRemove(board_num, cm_num);
    }
}
