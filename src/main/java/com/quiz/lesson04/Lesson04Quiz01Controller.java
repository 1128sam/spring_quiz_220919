package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

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
	
	// http://localhost:8080/lesson04/quiz01/after_add_seller
	@PostMapping("/after_add_seller")
	public String afterAddSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value="profileImageUrl", required=false) String profileImageUrl,
			@RequestParam("temperature") double temperature
			) {
		// DB insert
		sellerBO.addSeller(nickname, profileImageUrl, temperature);
		return "lesson04/afterAddSeller";
	}

	// http://localhost:8080/lesson04/quiz01/get_latest_seller
	// http://localhost:8080/lesson04/quiz01/get_latest_seller?id=3
	@GetMapping("/get_latest_seller")
	public String sellerInfo(
			@RequestParam(value="id", required=false) Integer id,
			Model model) {
		// DB select
		Seller seller = null; // = null은 생략 가능
		if (id == null) {
			seller = sellerBO.getLatestSeller();
		} else {
			seller = sellerBO.getSellerById(id);
		}
		model.addAttribute("seller", seller);

		return "lesson04/sellerInfo";
	}
}