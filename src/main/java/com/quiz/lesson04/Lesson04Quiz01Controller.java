package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {
	@Autowired
	private SellerBO sellerBO;

	// http://localhost:8080/lesson04/quiz01/add_seller_view
	@RequestMapping(path="/add_seller_view", method=RequestMethod.GET)
	public String quiz01_1() {
		return "lesson04/addSeller"; // addSeller.jsp로
	}
	
	@PostMapping("/after_add_seller")
	public String afterAddSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profileUrl") String profileUrl,
			@RequestParam(value="temperature", required=false) Double temperature
			) {
		// DB insert
		sellerBO.addSeller(nickname, profileUrl, temperature);
		return "lesson04/afterAddSeller";
	}
}