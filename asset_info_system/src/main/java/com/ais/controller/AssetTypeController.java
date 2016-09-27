package com.ais.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ais.bean.AssetType;
import com.ais.service.AssetTypeService;

@Controller
public class AssetTypeController {
	
	@Resource
	private AssetTypeService assetTypeService;
	
	@RequestMapping(value="/assettypelist")
	public String assetTypeList(ModelMap model) {
		List<AssetType> assetTypes = assetTypeService.getAllAssetType();
		model.addAttribute("assetTypes", assetTypes);
		return "assettype_list";
	}
	
	@RequestMapping(value="/assettype")
	public @ResponseBody AssetType getAssetById(@RequestParam("assetTypeId") Integer assetTypeId) {
		AssetType assetType = assetTypeService.getAssetTypeById(assetTypeId);
		return assetType;
	}
	
	@RequestMapping(value="/assettypejson")
	public @ResponseBody List<AssetType> getAssetTypes() {
		List<AssetType> assetTypes = assetTypeService.getAllAssetType();
		return assetTypes;
	}
	
	@RequestMapping(value="/assettypeadd", method = RequestMethod.POST)
	public String assetTypeAdd(AssetType assetType) {
		assetTypeService.save(assetType);
		return "redirect:/assettypelist";
	}
	
	@RequestMapping(value="/assettypeupdate", method = RequestMethod.POST)
	public String assetTypeUpdate(AssetType assetType) {
		assetTypeService.update(assetType);
		return "redirect:/assettypelist";
	}
	
	@RequestMapping(value="/assettypedelete")
	public String deleteAssetTypeById(@RequestParam("assetTypeId") Integer assetTypeId) {
		assetTypeService.deleteAssetTypeById(assetTypeId);
		return "redirect:/assettypelist";
	}
	
	@RequestMapping(value="/assettypebatchdelete")
	public String deleteAssetTypeByIds(@RequestParam String assetTypeIds) {
		String ids[] = assetTypeIds.split(",");
		for (String s : ids) {
			assetTypeService.deleteAssetTypeById(Integer.parseInt(s));
		}
		return "redirect:/assettypelist";
	}
	
}
