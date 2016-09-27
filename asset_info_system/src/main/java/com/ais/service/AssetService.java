package com.ais.service;

import java.util.List;

import com.ais.bean.Asset;

public interface AssetService {
    public Asset getAssetById(int assetId);
    //通过资产编号查询
    public Asset getAssetByNo(String assetNo);
    
    public int deleteAssetById(int assetId);
    //通过启用日期查询资产
    public List<Asset> getAssetByType(String type, String value);
    public boolean save(Asset asset);
    public boolean update(Asset asset);
	public List<Asset> getAssetByDate(String type, String value);
	//通过资产状态（出租，抵押等状态）
	public List<Asset> getAssetByStatus(Integer status);
	//通过编号名更新（出租，抵押等状态）
	public void updateByNo(String s, Integer status);
}
