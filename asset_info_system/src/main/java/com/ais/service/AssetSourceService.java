package com.ais.service;

import java.util.List;

import com.ais.bean.AssetSource;

public interface AssetSourceService {
    public AssetSource getAssetSourceById(int assetSourceId);
    public int deleteAssetSourceById(int assetSourceId);
    public List<AssetSource> getAllAssetSource();
    public boolean save(AssetSource assetSource);
    public boolean update(AssetSource assetSource);
}
