package com.ais.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ais.bean.Employee;
import com.ais.bean.Supplier;
import com.ais.service.EmployeeService;
import com.ais.service.SupplierService;

@Controller
public class ContactController {
	@Resource
	private SupplierService supplierService;
	
	@Resource
	private EmployeeService employeeService;
	
	@RequestMapping(value="/supplierlist")
	public String supplierList(ModelMap model) {
		List<Supplier> suppliers = supplierService.getAllInfo();
		model.addAttribute("suppliers", suppliers);
		return "suppliers_list";
	}
	
	@RequestMapping(value="/employeeslist")
	public String employeeList(ModelMap model) {
		List<Employee> employees = employeeService.getAllInfo();
		model.addAttribute("employees", employees);
		return "employees_list";
	}
}
