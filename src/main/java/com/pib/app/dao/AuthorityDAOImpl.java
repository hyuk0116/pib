package com.pib.app.dao;


import com.pib.app.vo.Authority;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("authorityDAO")
public class AuthorityDAOImpl implements AuthorityDAO {
	final String NAMESPACE = AuthorityDAO.class.getName();
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Authority> selectAuthority(String username) {
		return sqlSession.selectList(this.NAMESPACE + ".selectAuthority", username);
	}
}
