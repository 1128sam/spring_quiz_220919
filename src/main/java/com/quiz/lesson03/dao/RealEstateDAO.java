package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public RealEstate selectRealEstate(int id);

	public List<RealEstate> selectRealEstatePrice(int rentPrice);

	public List<RealEstate> selectRealEstateListByAreaPrice(@Param("area") int area, @Param("price") int price);
	
	public int insertRealEstate(RealEstate estate);
	
	public int insertRealEstateAsField( // @param("")로 여러개 => map
			@Param("realtorId") int realtorId, 
			@Param("address") String address, 
			@Param("area") int area, 
			@Param("type") String type, 
			@Param("price") int price, 
			@Param("rentPrice") Integer rentPrice);
	
	public int updateRealEstate(@Param("id") int id, @Param("type") String type, @Param("price") int price);
	
	public void deleteRealEstateById(int id);
}