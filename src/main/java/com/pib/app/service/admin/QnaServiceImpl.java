package com.pib.app.service.admin;

import com.pib.app.dao.QnaDAO;
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
    public Qna getBoard(Integer bno) throws Exception {
        Qna qna = new Qna();
        qna.setBno(bno);

        return qnaDAO.selectBoard(qna);
    }

    @Override
    public List<Qna> getBoardList(Integer pageNo) throws Exception {
        Qna qna = new Qna();
        qna.setFrom(0L);
        qna.setTo(10L);

        return qnaDAO.selectBoardList(qna);
    }
}
