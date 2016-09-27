package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.AssetSource;
import com.ais.dao.AssetSourceDao;
import com.ais.service.AssetSourceService;

@Service("assetSourceService")
public class AssetSourceServiceImpl implements AssetSourceService {
	@Resource
	private AssetSourceDao assetSourceDao;

	@Override
	public AssetSource getAssetSourceById(int assetSourceId) {
		return null;
		// TODO Auto-generated method stub
	}
	
	@Override
	public boolean save(AssetSource assetSource) {
		// TODO Auto-generated method stub
		assetSourceDao.save(assetSource);
		return false;
	}
	
	@Override
	public boolean update(AssetSource assetSource) {
		// TODO Auto-generated method stub
		assetSourceDao.update(assetSource);
		return false;
	}

	@Override
	public List<AssetSource> getAllAssetSource() {
		// TODO Auto-generated method stub
		return assetSourceDao.getAll();
	}

	@Override
	public int deleteAssetSourceById(int assetSourceId) {
		// TODO Auto-generated method stub
		return assetSourceDao.deleteById(assetSourceId);
	}

}
