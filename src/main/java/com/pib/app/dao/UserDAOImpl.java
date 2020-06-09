package com.pib.app.dao;

import com.pib.app.vo.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public class UserDAOImpl implements UserDAO {
    final String NAMESPACE = UserDAO.class.getName();

    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public User selectUser(String username) {
        return sqlSession.selectOne(this.NAMESPACE + ".selectUser", username);
    }
}
