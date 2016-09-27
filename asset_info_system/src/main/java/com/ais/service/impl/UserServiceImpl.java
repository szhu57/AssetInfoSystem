package com.ais.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.User;
import com.ais.dao.UserDao;
import com.ais.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}

	@Override
	public boolean checkUser(User user) {
		// TODO Auto-generated method stub
		if ("admin".equals(user.getUserName()) && "admin".equals(user.getPassword())) {
			return true;
		}
		return false;
		
		
	}

}
