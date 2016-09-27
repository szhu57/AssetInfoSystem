package com.ais.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ais.bean.AssetType;

@Repository
public interface AssetTypeDao {
    int deleteById(Integer id);

    int save(AssetType assetType);
    
    int update(AssetType assetType);

    AssetType getById(Integer id);
    
    List<AssetType> getAll();

}