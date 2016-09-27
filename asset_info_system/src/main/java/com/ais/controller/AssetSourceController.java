package com.ais.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ais.bean.AssetSource;
import com.ais.service.AssetSourceService;

@Controller
public class AssetSourceController {
	
	@Resource
	private AssetSourceService assetSourceService;
	
	@RequestMapping(value="/assetsourcelist")
	public String assetSourceList(ModelMap model) {
		List<AssetSource> assetSources = assetSourceService.getAllAssetSource();
		model.addAttribute("assetSources", assetSources);
		return "assetsource_list";
	}
	
	@RequestMapping(value="/assetsourceadd", method = RequestMethod.POST)
	public String assetSourceAdd(AssetSource assetSource) {
		assetSourceService.save(assetSource);
		return "redirect:/assetsourcelist";
	}
	
	@RequestMapping(value="/assetsourceupdate", method = RequestMethod.POST)
	public String assetSourceUpdate(AssetSource assetSource) {
		assetSourceService.update(assetSource);
		return "redirect:/assetsourcelist";
	}
	
	@RequestMapping(value="/assetsourcedelete")
	public String deleteAssetSourceById(@RequestParam("assetSourceId") Integer assetSourceId) {
		assetSourceService.deleteAssetSourceById(assetSourceId);
		return "redirect:/assetsourcelist";
	}
	
	@RequestMapping(value="/assetsourcebatchdelete")
	public String deleteAssetSourceByIds(@RequestParam String assetSourceIds) {
		String ids[] = assetSourceIds.split(",");
		for (String s : ids) {
			assetSourceService.deleteAssetSourceById(Integer.parseInt(s));
		}
		return "redirect:/assetsourcelist";
	}
	
	
}
