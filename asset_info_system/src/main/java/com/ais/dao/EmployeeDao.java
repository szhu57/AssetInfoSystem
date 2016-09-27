package com.ais.dao;

import java.util.List;

import com.ais.bean.Employee;

public interface EmployeeDao {
	List<Employee> selectByPrimaryKey();
}
