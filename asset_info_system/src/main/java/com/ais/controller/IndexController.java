package com.ais.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ais.bean.User;
import com.ais.service.AssetSourceService;
import com.ais.service.AssetStatusService;
import com.ais.service.AssetTypeService;
import com.ais.service.UserService;

@Controller
public class IndexController {
	
	@Resource
	private AssetTypeService assetTypeService;
	@Resource
	private AssetSourceService assetSourceService;
	@Resource
	private AssetStatusService assetStatusService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value = "top")
	public String top(User user, ModelMap model) {
		return "top";
	}
	
	@RequestMapping(value = "index_left")
	public String indexLeft(User user, ModelMap model) {
		return "index_left";
	}
	
	@RequestMapping(value = "assetreg_left")
	public String assetRegLeft(User user, ModelMap model) {
		model.addAttribute("assetType", assetTypeService.getAllAssetType());
		model.addAttribute("assetStatus", assetStatusService.getAllAssetStatus());
		model.addAttribute("assetSource", assetSourceService.getAllAssetSource());
		return "assetreg_left";
	}
	
	@RequestMapping(value = "assetmgr_left")
	public String assetMgrLeft(User user, ModelMap model) {
		return "assetmgr_left";
	}
	
	@RequestMapping(value = "contract_left")
	public String contractLeft(User user, ModelMap model) {
		return "contract_left";
	}
	
	@RequestMapping(value = "statistic_left")
	public String statisticLeft(User user, ModelMap model) {
		return "statistic_left";
	}
	
	@RequestMapping(value = "query_left")
	public String queryLeft(User user, ModelMap model) {
		return "query_left";
	}
	
	@RequestMapping(value = "assetcard_left")
	public String assetCardLeft(User user, ModelMap model) {
		return "assetcard_left";
	}
	
	@RequestMapping(value = "bussapproval_left")
	public String bussApprovalLeft(User user, ModelMap model) {
		return "bussapproval_left";
	}
	
	@RequestMapping(value = "contact_left")
	public String contactLeft(User user, ModelMap model) {
		return "contact_left";
	}
	
	@RequestMapping(value = "systemmgr_left")
	public String systemMgrLeft(User user, ModelMap model) {
		return "systemmgr_left";
	}
	
	@RequestMapping(value = "index2")
	public String index2(User user, ModelMap model) {
		return "index2";
	}
	
}
