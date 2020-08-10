package com.pib.app.dao;

import com.pib.app.vo.Qna;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class QnaDAOImpl implements QnaDAO {

    private static final String NAMESPACE = "com.pib.app.dao.QnaDAO";

    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void create(Qna qna) throws Exception {
        sqlSession.insert(NAMESPACE + ".create", qna);
    }

    @Override
    public Qna selectQna(Qna qna) throws Exception{
        return sqlSession.selectOne(NAMESPACE + ".selectQnaList", qna);
    }

    @Override
    public List<Qna> selectQnaList(Qna qna) throws Exception{
        return sqlSession.selectList(NAMESPACE + ".selectQnaList", qna);
    }

    @Override
    public int selectCount() {
        return sqlSession.selectOne(NAMESPACE + ".selectCount");
    }
}
