package com.ais.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ais.bean.AssetStatus;
import com.ais.service.AssetStatusService;

@Controller
public class AssetStatusController {
	
	@Resource
	private AssetStatusService assetStatusService;
	
	@RequestMapping(value="/assetstatuslist")
	public String assetStatusList(String type, String value, ModelMap model) {
		List<AssetStatus> assetStatus = assetStatusService.getAllAssetStatus();
		model.addAttribute("assetStatus", assetStatus);
		return "assetstatus_list";
	}
	
	@RequestMapping(value="/assetstatusadd", method = RequestMethod.POST)
	public String assetStatusAdd(AssetStatus assetStatus) {
		assetStatusService.save(assetStatus);
		return "redirect:/assetstatuslist";
	}
	
	@RequestMapping(value="/assetStatusupdate", method = RequestMethod.POST)
	public String assetStatusUpdate(AssetStatus assetStatus) {
		assetStatusService.update(assetStatus);
		return "redirect:/assetstatuslist";
	}
	
	@RequestMapping(value="/assetstatusdelete")
	public String deleteAssetById(@RequestParam("assetStatusId") Integer assetStatusId) {
		assetStatusService.deleteAssetStatusById(assetStatusId);
		return "redirect:/assetstatuslist";
	}
	
	@RequestMapping(value="/assetstatusbatchdelete")
	public String deleteAssetStatusByIds(@RequestParam String assetStatusIds) {
		String ids[] = assetStatusIds.split(",");
		for (String s : ids) {
			assetStatusService.deleteAssetStatusById(Integer.parseInt(s));
		}
		return "redirect:/assetstatuslist";
	}
	
}
