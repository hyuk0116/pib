package com.pib.app.service.admin;

import com.pib.app.dao.QnaDAO;
import com.pib.app.util.Criteria;
import com.pib.app.vo.Qna;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class QnaServiceImpl implements QnaService {

    @Autowired
    private QnaDAO qnaDAO;

    public void setQnaDAO(QnaDAO qnaDAO) {
        this.qnaDAO = qnaDAO;
    }

    @Override
    public void create(Qna qna) throws Exception {

    }

    @Override
    public Qna getQna(Integer bno) throws Exception {
        Qna qna = new Qna();
        qna.setBno(bno);

        Qna result = qnaDAO.selectQna(qna);

        result.setContent(result.getContent().replaceAll(System.getProperty("line.separator"), "<br>"));
        return result;
    }

    @Override
    public List<Qna> getQnaList(Criteria criteria) throws Exception {
        Qna qna = new Qna();
        qna.setFrom(criteria.getPageStart());

        return qnaDAO.selectQnaList(qna);
    }

    @Override
    public int getCount() {
        return qnaDAO.selectCount();
    }
}