package com.spring.mvc.web.michelin.service;

import com.spring.mvc.web.michelin.domain.CmMichelin;
import com.spring.mvc.web.michelin.domain.Michelin;
import com.spring.mvc.web.michelin.repository.cmMichelinMapper;
import com.spring.mvc.web.michelin.repository.cmMichelinRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Log4j2
public class cmMichelinService {

    private final cmMichelinMapper cmMichelinRepository;

    //댓글 쓰기
    public void register(CmMichelin cmmichelin) {
        cmMichelinRepository.cmSave(cmmichelin.getBoard_num(), cmmichelin.getCm_writer(), cmmichelin.getCm_content());
    }

    //댓글 삭제
    public void cmdelete(int board_num, int cm_num) {
        cmMichelinRepository.cmRemove(board_num, cm_num);
    }

    public void cmDeleteAll(int board_num) {
        cmMichelinRepository.cmRemoveAll(board_num);
    }

    //댓글 전체보기
    public List<CmMichelin> getCmMichelinList(int board_num) {

        return cmMichelinRepository.findAll(board_num);
    }
}
