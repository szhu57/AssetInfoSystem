package com.ais.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ais.bean.User;
import com.ais.service.UserService;

@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value = "login")
	public String login(User user, ModelMap model) {
		
		
		if (userService.checkUser(user)) {
			model.addAttribute("user", user);
			return "index";
		} else {
			return "login";
		}
		
		
	}
}
