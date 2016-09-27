package com.ais.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ais.bean.Asset;
import com.ais.bean.AssetStatus;

@Repository
public interface AssetStatusDao {
    int deleteById(Integer id);

    int save(AssetStatus assetStatus);
    
    int update(AssetStatus assetStatus);

    Asset getById(Integer id);
    
    List<AssetStatus> getAll();

  /*  int updateByPrimaryKeySelective(Asset asset);

    int updateByPrimaryKey(Asset asset);*/
}