package com.ais.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.ais.bean.Asset;
import com.ais.dao.AssetDao;
import com.ais.service.AssetService;

@Service("assetService")
public class AssetServiceImpl implements AssetService {
	@Resource
	private AssetDao assetDao;

	@Override
	public Asset getAssetById(int assetId) {
		return assetDao.getById(assetId);
		// TODO Auto-generated method stub
	}

	@Override
	public Asset getAssetByNo(String no) {
	return	assetDao.getByNo(no);
		// TODO Auto-generated method stub
	}

	@Override
	public boolean save(Asset asset) {
		// TODO Auto-generated method stub
		assetDao.save(asset);
		return false;
	}

	@Override
	public boolean update(Asset asset) {
		// TODO Auto-generated method stub
		assetDao.update(asset);
		return false;
	}

	@Override
	public List<Asset> getAssetByType(String type, String value) {
		// TODO Auto-generated method stub
		if (StringUtils.isNotBlank(type) && StringUtils.isNotBlank(value)) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("type", type);
			map.put("value", value);
			return assetDao.getByType(map);
		} else {
			return assetDao.getAll();
		}
	}
//通过启用日期查询资产
	@Override
	public List<Asset> getAssetByDate(String type, String value) {
		// TODO Auto-generated method stub
		if (StringUtils.isNotBlank(type) || StringUtils.isNotBlank(value)) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("type", type);
			map.put("value", value);
			if (value.equals("null"))
				return assetDao.getByNullDate(map);
			else
				return assetDao.getByNotNullDate(map);
		} else {
			return assetDao.getAll();
		}
	}

	@Override
	public int deleteAssetById(int assetId) {
		// TODO Auto-generated method stub
		return assetDao.deleteById(assetId);
	}
 
	
	
	//通过状态（出租，抵押）获取资产
	@Override
	public List<Asset> getAssetByStatus(Integer status) {
		
		
		return assetDao.getAssetByStatus(status);
	}
//通过编号更新资产出租抵押等状态
	@Override
	public void updateByNo(String s, Integer status) {
		
		assetDao.updateByNo(s,status);
	}

}
