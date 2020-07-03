package com.pib.app.service.admin;

import com.pib.app.vo.Qna;

import java.util.List;

public interface QnaService {

    void create (Qna qna) throws Exception;

    Qna getBoard(Integer bno) throws Exception;

    List<Qna> getBoardList(Integer pageNo) throws Exception;
}
