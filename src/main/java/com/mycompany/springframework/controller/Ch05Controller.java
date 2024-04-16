package com.mycompany.springframework.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch05")
public class Ch05Controller {
	
	/*@GetMapping("/header")
	public String header(Model model, 
			@RequestHeader("User-Agent") String userAgent) {
		log.info("User-Agent: " + userAgent);
		
		//브라우저 종류 알아내기
		if(userAgent.contains("Edg")) {
			model.addAttribute("browser", "Edge");
		} else {
			model.addAttribute("browser", "Chrome");
		}
		model.addAttribute("chNum", "ch05");
		return "ch05/header";
	}*/
	
	@GetMapping("/header")
	public String header(Model model, HttpServletRequest request) {
		
		//브라우저 종류 알아내기
		String userAgent = request.getHeader("User-Agent");
		if(userAgent.contains("Edg")) {
			model.addAttribute("browser", "Edge");
		} else {
			model.addAttribute("browser", "Chrome");
		}
		
		//클라이언트 IP주소 알아내기
		String clientIPAddress = request.getRemoteAddr();
		model.addAttribute("clientIp", clientIPAddress);
		
		model.addAttribute("chNum", "ch05");
		return "ch05/header";
	}
	
	@GetMapping("/createCookie")
	public String createCookie(HttpServletResponse response) {
		//Cookie 생성
		Cookie cookie = new Cookie("useremail", "summer@naver.com");
		
		//Cookie 응답 HTTP에 포함시키기
		response.addCookie(cookie);
		
		return "redirect:/";
	}
	
	@GetMapping("/readCookie")
	public String readCookie(Model model, 
			@CookieValue("useremail") String userEmail) {
		model.addAttribute("chNum", "ch05");
		model.addAttribute("userEmail", userEmail);
		
		log.info("useremail: " + userEmail);
		return "ch05/cookie";
	}
}
