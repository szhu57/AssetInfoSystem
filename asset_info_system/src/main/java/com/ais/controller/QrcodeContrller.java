package com.ais.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class QrcodeContrller {

	
	
	@RequestMapping(value = "qrcode")
	public String qrcode( ModelMap model) {
		return "qrcode";
	}
	
	
}
