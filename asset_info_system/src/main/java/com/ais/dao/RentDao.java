package com.ais.dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.ais.bean.Rent;
@Repository
public interface RentDao {
	 
	
	int save(Rent rent);
	    
	int update(Rent rent);
   
	List<Rent> getByStatus(int status);

	//改变状态为1
	boolean updateByNo(String no,int status);
}
