package com.quiz.sns;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SnsController {
	// http://localhost:8080/sns/sign_in_view
		@GetMapping("sns/sign_in_view")
		public String signIn() {
			return "sns/sign_in";
		}
		
		// http://localhost:8080/sns/sign_up_view
		@GetMapping("sns/sign_up_view")
		public String signUp() {
			return "sns/sign_up";
		}
}