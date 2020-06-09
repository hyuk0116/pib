package com.pib.app.dao;

import com.pib.app.vo.Authority;

import java.util.List;

public interface AuthorityDAO {
	List<Authority> selectAuthority(String username);
}
