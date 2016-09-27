package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.AssetType;
import com.ais.dao.AssetTypeDao;
import com.ais.service.AssetTypeService;

@Service("assetTypeService")
public class AssetTypeServiceImpl implements AssetTypeService {
	@Resource
	private AssetTypeDao assetTypeDao;

	@Override
	public AssetType getAssetTypeById(int assetTypeId) {
		return assetTypeDao.getById(assetTypeId);
		// TODO Auto-generated method stub
	}
	
	@Override
	public boolean save(AssetType assetType) {
		// TODO Auto-generated method stub
		assetTypeDao.save(assetType);
		return false;
	}
	
	@Override
	public boolean update(AssetType assetType) {
		// TODO Auto-generated method stub
		assetTypeDao.update(assetType);
		return false;
	}

	@Override
	public List<AssetType> getAllAssetType() {
		// TODO Auto-generated method stub
		return assetTypeDao.getAll();
	}

	@Override
	public int deleteAssetTypeById(int assetTypeId) {
		// TODO Auto-generated method stub
		return assetTypeDao.deleteById(assetTypeId);
	}

}
