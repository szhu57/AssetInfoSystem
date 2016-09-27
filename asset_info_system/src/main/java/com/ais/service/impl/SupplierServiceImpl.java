package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.ais.bean.Supplier;
import com.ais.dao.SupplierDao;
import com.ais.service.SupplierService;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
	@Resource
	private SupplierDao supplierDaolist;

	@Override
	public List<Supplier> getAllInfo() {
		// TODO Auto-generated method stub
		System.out.print(supplierDaolist);
		return this.supplierDaolist.selectByPrimaryKey();
	}
	
}
