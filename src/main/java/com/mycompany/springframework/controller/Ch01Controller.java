package com.mycompany.springframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch01")
public class Ch01Controller {
	
	@RequestMapping("")
	public String index() {
		log.info("info() 실행");
		log.info("info() 실행1");
		log.info("info() 실행2");
		log.info("info() 실행3");
		return "ch01/index";
	}
	
}
