package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.Employee;
import com.ais.dao.EmployeeDao;
import com.ais.service.EmployeeService;


@Service("employeerService")
public class EmployeeServiceImpl implements EmployeeService {
	@Resource
	private EmployeeDao employeeDaolist;

	@Override
	public List<Employee> getAllInfo() {
		// TODO Auto-generated method stub
		System.out.print(employeeDaolist);
		return this.employeeDaolist.selectByPrimaryKey();
	}
	
}
