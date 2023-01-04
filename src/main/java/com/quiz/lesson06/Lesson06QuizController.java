package com.quiz.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;

@RequestMapping("/lesson06")
@Controller
public class Lesson06QuizController {
	
	@Autowired
	private FavoriteBO favoriteBO;

	// http://localhost:8080/lesson06/quiz01/add_favorite_view
	@GetMapping("/quiz01/add_favorite_view")
	public String addFavoriteView() {
		return "lesson06/quiz01/addFavorite";
	}
	
	@ResponseBody
	@PostMapping("/quiz01/add_favorite")
	public String addBookmark(
			@RequestParam("name") String name,
			@RequestParam("address") String address
			) {
		favoriteBO.addBookmark(name, address);
		return "성공";
	}
	
	@GetMapping("/quiz01/after_add_favorite_view")
	public String afterAddFavoriteView() {
		return "lesson06/quiz01/afterAddFavoriteView";
	}
}