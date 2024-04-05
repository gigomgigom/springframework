package com.mycompany.springframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/")
public class HomeController {
	@RequestMapping("")
	public String index() {
		log.info("index() 실행");
		log.info("충돌 유발하자! 레볼루시옹!");
		return "home";
	}
}