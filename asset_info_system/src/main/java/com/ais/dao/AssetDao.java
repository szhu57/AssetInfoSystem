package com.ais.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ais.bean.Asset;

@Repository
public interface AssetDao {
    int deleteById(Integer id);

    int save(Asset asset);
    
    int update(Asset asset);

    Asset getById(Integer id);
    Asset getByNo(String no);
    List<Asset> getByType(Map<String, String> map);
    List<Asset> getByNullDate(Map<String, String> map);
    
    List<Asset> getAll();

	List<Asset> getByNotNullDate(Map<String, String> map);

	//通过资产状态（出租、抵押）
	List<Asset> getAssetByStatus(Integer status);
//通过编号跟新出租抵押状态
	void updateByNo(String s, Integer status);



  /*  int updateByPrimaryKeySelective(Asset asset);

    int updateByPrimaryKey(Asset asset);*/
}