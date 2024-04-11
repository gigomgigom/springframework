package com.mycompany.springframework.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch01")
public class Ch01Controller {
	private static final Logger LOGGER = LoggerFactory.getLogger(Ch01Controller.class);
	
	@RequestMapping("")
	public String index() {
		log.info("info() 실행");
		log.info("info() 실행1");
		log.error("info() 실행2");
		log.info("info() 실행3");
		log.info("뭐가 바뀌었지?");
		return "ch01/index";
	}
	
	@RequestMapping("/content")
	public String content(String chNum, Model model) {
		LOGGER.error("content()실행 ㅎ");
		
		model.addAttribute("chNum", chNum);
		return "ch01/content";
	}
	
}
