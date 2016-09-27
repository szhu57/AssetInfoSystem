package com.ais.controller;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
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
import com.ais.bean.User;
import com.ais.service.AssetService;
import com.ais.service.AssetSourceService;
import com.ais.service.AssetStatusService;
import com.ais.service.AssetTypeService;
import com.ais.service.RentService;

@Controller
public class AssetManageController {
	
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
	//获取已经转固的资产
	@RequestMapping(value="/storeassetlist")
	public String storeAssetList(@RequestParam("type") String type, @RequestParam("value") String value, ModelMap model) {
		if (StringUtils.isNotBlank("value")) {
			try {
				value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<Asset> assets = assetService.getAssetByDate(type, value);
		model.addAttribute("assets", assets);
		model.addAttribute("assetType", assetTypeService.getAllAssetType());
		model.addAttribute("assetStatus", assetStatusService.getAllAssetStatus());
		model.addAttribute("assetSource", assetSourceService.getAllAssetSource());
		return "storeasset_right";
	}
	//对未转固资产改变状态
	@RequestMapping(value="/assetmanageupdate", method = RequestMethod.POST)
	public String assetUpdate(Asset asset) {
		assetService.update(asset);
		return "redirect:/storeassetlist?type=usedate&value=null";
	}
	//获取需要转固的资产
	@RequestMapping(value="/assetstorelist")
	public String AssetStore(@RequestParam("type") String type, @RequestParam("value") String value, ModelMap model) {
		if (StringUtils.isNotBlank("value")) {
			try {
				value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<Asset> assets = assetService.getAssetByDate(type, value);
		model.addAttribute("assets", assets);
		model.addAttribute("assetType", assetTypeService.getAllAssetType());
		model.addAttribute("assetStatus", assetStatusService.getAllAssetStatus());
		model.addAttribute("assetSource", assetSourceService.getAllAssetSource());
		return "assetstore_right";
	}
	//获取状态为012资产也是已经添加要出租的资产
	@RequestMapping(value="/rentmglist")
	public String rentAsset( @RequestParam("status") Integer status ,ModelMap model) {
		
		//add service from db to get data
//		List<Rent> rent = rentService.getRentByStatus(status);
//		List<Asset> asset = new ArrayList<Asset>();
//		for(Rent r:rent){
//			Asset a =assetService.getAssetByNo(r.getAsset_id());
//			
//			if (a!=null)
//		 asset.add(a);
//		}
		List<Asset> asset = assetService.getAssetByStatus(status);
		
		model.addAttribute("assets",asset);
		model.addAttribute("assetType", assetTypeService.getAllAssetType());
		model.addAttribute("assetStatus", assetStatusService.getAllAssetStatus());
		model.addAttribute("assetSource", assetSourceService.getAllAssetSource());
		if(status==1)
		return "rentmanage_right";
		else return "hadrented_right";
	}
	//获取需要添加出租的所有资产（初始状态的资产）
		@RequestMapping(value="/inistatuslist")
		public @ResponseBody List <Asset> getInitialAsset(@RequestParam("status") Integer status) {
			
			//System.out.println("i am here");
//			List<Rent> rent = rentService.getRentByStatus(status);
//			
//			List<Asset> asset = new ArrayList<Asset>();
//			for(Rent r:rent){
//				Asset a =assetService.getAssetByNo(r.getAsset_id());
//				
//				if (a!=null)
//			 asset.add(a);
//			}
//			从资产表中选择初始状态
			
			
			List<Asset> assets = assetService.getAssetByStatus(status);
			return assets;
		}
		
////把资产出租状态置为1，可以查询出需要出租的资产
		@RequestMapping(value="/addrentasset")
		public void updateStatus(@RequestParam String assetIds,@RequestParam("status") Integer status) {
//			String nos[] = assetIds.split(",");
//			for (String s : nos) {
//				rentService.updateByNo(s);
//			}
			
			String nos[] = assetIds.split(",");
			for(String s:nos){
				assetService.updateByNo(s,status);
			}
		}
		//出租资产更改出租信息把status置为2，同时添加信息（待审查状态）
		@RequestMapping(value="/rentupdate", method = RequestMethod.POST)
		public String rentUpdate( Rent rent) {
			rentService.save(rent);//存入出租表中其中状态为初始态（0），待审查  2--->0.
			int status =2;
			assetService.updateByNo(rent.getAsset_id(), status);
			return "redirect:/rentmglist?status=1";
		}
		
		//获取需要抵押的资产并且状态为0
		@RequestMapping(value="/mortgage")
		public String mortage(@RequestParam("status") Integer status,ModelMap model) {
		
			List<Asset> assets = assetService.getAssetByStatus(status);
			model.addAttribute("assets", assets);
			
			return "mortgage_right";
		}
		//资产盘点
				@RequestMapping(value="/inventory")
				public String inventory(ModelMap model) {
//					String type ="usedate";
//					String value ="notnull";
//					List<Asset> assets = assetService.getAssetByDate(type, value);
//					model.addAttribute("assets", assets);
					
					return "inventory_right";
				}
				
		//资产折旧depreciation 
				
				@RequestMapping(value="/depreciation")
				public String depreciation(@RequestParam("status") Integer status,ModelMap model) {
					
					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "depreciation_right";
				}
				
				
				//归还资产list
				
				@RequestMapping(value="/returnassetlist")
				public String returnList(ModelMap model,@RequestParam("status") Integer status) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					return "returnasset_list";
				}
				//归还资产业务处理
				@RequestMapping(value="/returnasset")
				public void returnAsset(ModelMap model,@RequestParam("status") Integer status,@RequestParam("assetno") String no) {
                  
					System.out.println("status:"+status);
					System.out.println("no:"+no);
					//修改资产表中状态为0
					assetService.updateByNo(no, status);
				
				
				}
				
				//归还资产test业务处理
                     
				@RequestMapping(value="/return")
				public String approval(@RequestParam("status") Integer status ,@RequestParam("assetno") String no) {
//					String type ="usedate";
//					String value ="notnull";
					 assetService.updateByNo(no, status);;
					
					
					return "redirect:returnassetlist?status=3";
				}
				
				
				
				/*资产处置
				 * 
				 * */
				
				@RequestMapping(value="/sell")
				public String sell(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/sell_right";
				}
				@RequestMapping(value="/transfer")//清理残值
				public String transfer(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/transfer_right";
				}
				@RequestMapping(value="/discard")//报废
				public String discard(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/discard_right";
				}
				@RequestMapping(value="/lose")//报损
				public String lose(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/lose_right";
				}
				@RequestMapping(value="/pankui")//盘亏
				public String pankui(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/pankui_right";
				}
				@RequestMapping(value="/qingcan")//清理残值
				public String qingcan(@RequestParam("status") Integer status ,ModelMap model) {

					List<Asset> assets = assetService.getAssetByStatus(status);
					model.addAttribute("assets", assets);
					
					return "asset_handle/qingcan_right";
				}
				
				
				//资产处置业务逻辑
				@RequestMapping(value="/asset_handle")
				public String assetHandle(@RequestParam("ways") String ways ,@RequestParam("status") Integer status ,@RequestParam("assetno") String no) {
//					String type ="usedate";
//					String value ="notnull";
					 assetService.updateByNo(no, status);;
					
					
					return "redirect:"+ways+"?status=0";
				}
				
				
}
