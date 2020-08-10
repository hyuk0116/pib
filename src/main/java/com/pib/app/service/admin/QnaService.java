package com.pib.app.service.admin;

import com.pib.app.util.Criteria;
import com.pib.app.vo.Qna;

import java.util.List;

public interface QnaService {

    void create (Qna qna) throws Exception;

    Qna getQna(Integer bno) throws Exception;

    List<Qna> getQnaList(Criteria criteria) throws Exception;

    int getCount();
}
