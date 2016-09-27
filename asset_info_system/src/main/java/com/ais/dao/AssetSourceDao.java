package com.ais.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ais.bean.Asset;
import com.ais.bean.AssetSource;

@Repository
public interface AssetSourceDao {
    int deleteById(Integer id);

    int save(AssetSource assetSource);
    
    int update(AssetSource assetSource);

    Asset getById(Integer id);
    
    List<AssetSource> getAll();

}