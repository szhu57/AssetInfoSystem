package com.ais.service;

import java.util.List;

import com.ais.bean.AssetType;

public interface AssetTypeService {
    public AssetType getAssetTypeById(int assetTypeId);
    public int deleteAssetTypeById(int assetTypeId);
    public List<AssetType> getAllAssetType();
    public boolean save(AssetType assetType);
    public boolean update(AssetType assetType);
}
