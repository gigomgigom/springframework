package com.mycompany.springframework;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.springframework.dto.Ch07Board;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch07")
public class Ch07Controller {
	
	@GetMapping("/request1")
	public ModelAndView request1(Model model) {
		model.addAttribute("chNum", "ch07");
		List<Ch07Board> boardList = new ArrayList<>();
		for(int i = 0; i < 10; i++) {
			boardList.add(new Ch07Board(i, "제목"+i, "도와줘잉"+i, "살려줘잉"+i, i, new Date()));
		}
		
		ModelAndView modelAndView = new ModelAndView();
		//request 범위 저장에 boardList 저장
		modelAndView.addObject("boardList", boardList);
		//viewName을 저장
		modelAndView.setViewName("ch07/requestData");
		
		return modelAndView;
	}
	
	@GetMapping("/request2")
	public String request2(Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/requestData";
	}
	
	@GetMapping("/request3")
	public String request3(Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/requestData";
	}
	
	@GetMapping("/request4")
	public String request4(Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/requestData";
	}
	
	@GetMapping("/session")
	public String session(Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/sessionData";
	}
	
	@GetMapping("/application")
	public String application(Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/applicationData";
	}
}
