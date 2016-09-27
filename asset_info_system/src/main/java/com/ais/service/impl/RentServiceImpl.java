package com.ais.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ais.bean.Rent;
import com.ais.dao.RentDao;
import com.ais.service.RentService;
@Service("rentService")
public class RentServiceImpl implements RentService {
	@Resource
	private RentDao rentDao;


	@Override
	public boolean save(Rent rent) {
		rentDao.save(rent);
		return false;
	}

	@Override
	public boolean update(Rent rent) {
		rentDao.update(rent);
		return false;
	}

	@Override
	public List<Rent> getRentByStatus(int status) {
		return rentDao.getByStatus(status);
		
	}

	@Override
	public boolean updateByNo(String no,int status) {
		return rentDao.updateByNo(no,status);
	}

}
