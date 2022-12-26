package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateDAO;
import com.quiz.lesson03.model.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateDAO realEstateDAO;
	
	public RealEstate getRealEstate(int id) {
		return realEstateDAO.selectRealEstate(id);
	}
	public List<RealEstate> getRealEstatePrice(int rentPrice) {
		return realEstateDAO.selectRealEstatePrice(rentPrice);
	}
	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price) {
		// 옛날에는 Map을 이용
		return realEstateDAO.selectRealEstateListByAreaPrice(area, price);
	}
	
	public int addRealEstate(RealEstate estate) {
		return realEstateDAO.insertRealEstate(estate);
	}
	
	public int addRealEstateAsField(int realtorId, String address, int area, String type, int price, Integer rentPrice) {
		return realEstateDAO.insertRealEstateAsField(realtorId, address, area, type, price, rentPrice);
	}
}