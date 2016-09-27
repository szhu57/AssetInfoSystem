package com.ais.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ais.bean.Asset;
import com.ais.service.AssetService;

@Controller
public class BussapprovalController {
	
	@Resource
	private AssetService assetService;

	
	
	@RequestMapping(value="/pendingapproval")
	public String pendingApproval(@RequestParam("status") Integer status ,ModelMap model) {
//		String type ="usedate";
//		String value ="notnull";
		List<Asset> assets = assetService.getAssetByStatus(status);
		model.addAttribute("assets", assets);
		
		return "pendingapproval_right";
	}
	
	
	//审批，通过，不通过
	@RequestMapping(value="/approval")
	public String approval(@RequestParam("status") Integer status ,@RequestParam("assetno") String no) {
//		String type ="usedate";
//		String value ="notnull";
		 assetService.updateByNo(no, status);;
		
		
		return "redirect:pendingapproval?status=2";
	}
}
