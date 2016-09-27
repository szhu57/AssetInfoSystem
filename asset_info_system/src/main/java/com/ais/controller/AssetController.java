package com.ais.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ais.bean.Asset;
import com.ais.bean.Rent;
import com.ais.service.AssetService;
import com.ais.service.AssetSourceService;
import com.ais.service.AssetStatusService;
import com.ais.service.AssetTypeService;
import com.ais.service.RentService;

@Controller
public class AssetController {
	@Resource
	private AssetService assetService;
	@Resource
	private RentService rentService;
	@Resource
	private AssetTypeService assetTypeService;
	@Resource
	private AssetSourceService assetSourceService;
	@Resource
	private AssetStatusService assetStatusService;
	
	@RequestMapping(value="/assetlist")
	public String assetList(@RequestParam("type") String type, @RequestParam("value") String value, ModelMap model) {
		if (StringUtils.isNotBlank("value")) {
			try {
				value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<Asset> assets = assetService.getAssetByType(type, value);
		model.addAttribute("assets", assets);
		model.addAttribute("assetType", assetTypeService.getAllAssetType());
		model.addAttribute("assetStatus", assetStatusService.getAllAssetStatus());
		model.addAttribute("assetSource", assetSourceService.getAllAssetSource());
		return "asset_list";
	}
	
	@RequestMapping(value="/asset")
	public @ResponseBody Asset getAssetById(@RequestParam("assetId") Integer assetId) {
		Asset asset = assetService.getAssetById(assetId);
		return asset;
	}
	
	
	@RequestMapping(value="/assetadd", method = RequestMethod.POST)
	public String assetAdd(Asset asset) {
		
		assetService.save(asset);
//     Rent rent = new Rent();
//		rent.setAsset_id(asset.getNo());
//		rent.setStatus(0);
//		rentService.save(rent);
		return "redirect:/assetlist?type=&value=";
	}
	
	@RequestMapping(value="/assetupdate", method = RequestMethod.POST)
	public String assetUpdate(Asset asset) {
		assetService.update(asset);
		return "redirect:/assetlist?type=&value=";
	}
	
	@RequestMapping(value="/assetdelete")
	public String deleteAssetById(@RequestParam("assetId") Integer assetId) {
		assetService.deleteAssetById(assetId);
		return "redirect:/assetlist?type=&value=";
	}
	
	@RequestMapping(value="/assetbatchdelete")
	public String deleteAssetByIds(@RequestParam String assetIds) {
		String ids[] = assetIds.split(",");
		for (String s : ids) {
			assetService.deleteAssetById(Integer.parseInt(s));
		}
		return "redirect:/assetlist?type=&value=";
	}
	
}
