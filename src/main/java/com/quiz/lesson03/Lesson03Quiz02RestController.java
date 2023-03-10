package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.model.RealEstate;

@RequestMapping("/lesson03/quiz02")
@RestController
public class Lesson03Quiz02RestController {
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/1")
	public String quiz02_1() {
		RealEstate estate = new RealEstate();
		estate.setRealtorId(3);
		estate.setAddress("푸르지용 리버 303동 1104호");
		estate.setArea(89);
		estate.setType("매매");
		estate.setPrice(100000);
		
		int row = realEstateBO.addRealEstate(estate);
		return "입력 성공: " + row;
	}

	@RequestMapping("/2")
	public String quiz02_2(@RequestParam("realtor_id") int realtorId) {
		int row = realEstateBO.addRealEstateAsField(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		return "입력 성공 : " + row;
	}
}