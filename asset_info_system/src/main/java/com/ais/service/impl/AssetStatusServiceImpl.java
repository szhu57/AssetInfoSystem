package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.AssetStatus;
import com.ais.dao.AssetStatusDao;
import com.ais.service.AssetStatusService;

@Service("assetStatusService")
public class AssetStatusServiceImpl implements AssetStatusService {
	@Resource
	private AssetStatusDao assetStatusDao;

	@Override
	public AssetStatus getAssetStatusById(int assetStatusId) {
		return null;
		// TODO Auto-generated method stub
	}
	
	@Override
	public boolean save(AssetStatus assetStatus) {
		// TODO Auto-generated method stub
		assetStatusDao.save(assetStatus);
		return false;
	}
	
	@Override
	public boolean update(AssetStatus assetStatus) {
		// TODO Auto-generated method stub
		assetStatusDao.update(assetStatus);
		return false;
	}

	@Override
	public List<AssetStatus> getAllAssetStatus() {
		// TODO Auto-generated method stub
		return assetStatusDao.getAll();
	}

	@Override
	public int deleteAssetStatusById(int assetStatusId) {
		// TODO Auto-generated method stub
		return assetStatusDao.deleteById(assetStatusId);
	}

}
