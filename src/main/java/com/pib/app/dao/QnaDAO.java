package com.pib.app.dao;

import com.pib.app.vo.Qna;

import java.util.List;

public interface QnaDAO {

    void create(Qna qna) throws Exception;

    Qna selectQna(Qna qna) throws Exception;

    List<Qna> selectQnaList(Qna qna) throws Exception;

    int selectCount();
}
