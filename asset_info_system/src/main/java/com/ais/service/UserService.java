package com.ais.service;

import com.ais.bean.User;

public interface UserService {
	public boolean checkUser(User user);
    public User getUserById(int userId);  
}
