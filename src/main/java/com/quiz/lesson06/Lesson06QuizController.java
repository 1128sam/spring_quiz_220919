package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;
import com.quiz.lesson06.model.Favorite;

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
	
	@ResponseBody // AJAX 통신 요청이 있으면 @ResponseBody가 필요함
	@PostMapping("/quiz01/add_favorite")
	public String addBookmark(
			@RequestParam("name") String name,
			@RequestParam("address") String address
			) {
		favoriteBO.addBookmark(name, address);
		return "즐겨찾기 추가가 완료되었습니다.";
		
//		Map<String, String> result = new HashMap<>();
//		result.put("result", "성공");
//		return result;
	}
	
	@GetMapping("/quiz01/after_add_favorite_view")
	public String afterAddFavoriteView() {
		return "lesson06/quiz01/afterAddFavoriteView";
	}

	// http://localhost:8080/lesson06/quiz01/favorite_list
	@GetMapping("/quiz01/favorite_list")
	public String BookmarkListView(Model model) {
		List<Favorite> bookmarkList = favoriteBO.getBookmarkList();
		model.addAttribute("bookmarkList", bookmarkList);
		return "lesson06/quiz01/favoriteList";
	}
	
	@ResponseBody
	@GetMapping("/quiz02/is_duplication")
	public Map<String, Boolean> isDuplication(@RequestParam("address") String address) {
		Map<String, Boolean> result = new HashMap<>();
		result.put("is_duplication", favoriteBO.existBookmarkByAddress(address));
		return result;
	}
}