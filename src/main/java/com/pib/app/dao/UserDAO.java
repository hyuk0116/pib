package com.pib.app.dao;

import com.pib.app.vo.User;

public interface UserDAO {
    User selectUser(String username);
}
