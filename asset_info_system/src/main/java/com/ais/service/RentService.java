package com.ais.service;

import java.util.List;

import com.ais.bean.Rent;
public interface RentService {

	   
	    public boolean save(Rent rent);
	    public boolean update(Rent rent);	
	    public List<Rent> getRentByStatus(int status);
		public boolean updateByNo(String no,int status);
	
}
