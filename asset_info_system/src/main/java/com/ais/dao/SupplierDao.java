package com.ais.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ais.bean.Supplier;

@Repository
public interface SupplierDao {
	
	List<Supplier> selectByPrimaryKey();
	
}

