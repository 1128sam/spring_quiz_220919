package com.quiz.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lesson01/quiz02")
public class Lesson01Quiz02RestController {

	@RequestMapping("/1")
	public List<Map<String, Object>> quiz02_1() {
		// @ResponseBody + String return => HttpMessageConverter   String 내용을 response body에 담아 HTML로 내린다.
		// @ResponseBody + 객체 리턴 => HttpMessageConverter jackson 라이브러리 => JSON 응답

		List<Map<String, Object>> result = new ArrayList<>();
		Map<String, Object> map1 = new HashMap<>();
		
		map1.put("rate", 15);
		map1.put("director", "봉준호");
		map1.put("time", 131);
		map1.put("title", "기생충");
		result.add(map1);
		
		map1 = new HashMap<>();
		map1.put("rate", 0);
		map1.put("director", "로베르토 베니니");
		map1.put("time", 116);
		map1.put("title", "인생은 아름다워");
		result.add(map1);

		map1 = new HashMap<>();
		map1.put("rate", 12);
		map1.put("director", "크리스토퍼 놀란");
		map1.put("time", 147);
		map1.put("title", "인셉션");
		result.add(map1);

		map1 = new HashMap<>();
		map1.put("rate", 19);
		map1.put("director", "윤종빈");
		map1.put("time", 133);
		map1.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		result.add(map1);

		map1 = new HashMap<>();
		map1.put("rate", 15);
		map1.put("director", "프란시스 로렌스");
		map1.put("time", 137);
		map1.put("title", "헝거게임");
		result.add(map1);

		return result;
	}

	@RequestMapping("/2")
	public List<Board> quiz02_2() {
		List<Board> list = new ArrayList<>();
		Board board = new Board();
		board.setTitle("안녕하세요 가입인사 드립니다.");
		board.setUser("hagulu");
		board.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.");
		list.add(board);

		board = new Board();
		board.setTitle("헐 대박");
		board.setUser("bada");
		board.setContent("오늘 목요일이었어... 금요일인줄");
		list.add(board);

		board = new Board();
		board.setTitle("오늘 이야기 들려드릴게요.");
		board.setUser("dulumary");
		board.setContent("......");
		list.add(board);

		return list;
	}
	
	@RequestMapping("/3")
	public ResponseEntity<Board> quiz02_3() {
		List<Board> list = new ArrayList<>();	
		Board board = new Board();
		board.setTitle("안녕하세요 가입인사 드립니다.");
		board.setUser("hagulu");
		board.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.");
		
		return new ResponseEntity<>(board, HttpStatus.INTERNAL_SERVER_ERROR);
	}
}