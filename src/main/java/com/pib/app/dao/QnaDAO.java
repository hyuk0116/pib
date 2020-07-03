package com.pib.app.dao;

import com.pib.app.vo.Qna;

import java.util.List;

public interface QnaDAO {

    void create(Qna qna) throws Exception;

    Qna selectBoard(Qna qna) throws Exception;

    List<Qna> selectBoardList(Qna qna) throws Exception;
}
