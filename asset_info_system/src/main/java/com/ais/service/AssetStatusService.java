package com.ais.service;

import java.util.List;

import com.ais.bean.AssetStatus;

public interface AssetStatusService {
    public AssetStatus getAssetStatusById(int assetStatusId);
    public int deleteAssetStatusById(int assetStatusId);
    public List<AssetStatus> getAllAssetStatus();
    public boolean save(AssetStatus assetStatus);
    public boolean update(AssetStatus assetStatus);
}
