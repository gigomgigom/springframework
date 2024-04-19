package com.mycompany.springframework.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.exception.Ch10CustomException;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch10")
public class Ch10Controller {
	@GetMapping("/handlingException1")
	public String handlingException1(String data) {
		try {
			if(data.equals("java")) {
				//NullPointerException 발생할 수 있음.
			}
		} catch(NullPointerException e) {
			log.info("전달받은 DATA가 존재하지 않습니다. data : (Null)");
			return "ch10/error500_null";
		}

		return "redirect:/";
	}

	@GetMapping("/handlingException2")
	public String handlingException2(String data) {
		if(data.equals("java")) {
			//NullPointerException 발생할 수 있음.
		}

		return "redirect:/";
	}

	@GetMapping("/handlingException3")
	public String handlingException3() throws Ch10CustomException{
		if(true) {
			//NullPointerException 발생할 수 있음.
			throw new Ch10CustomException("예외 발생한 이유는 어쩌구저쩌고");
		}
		return "redirect:/";
	}

	@GetMapping("/handlingException4")
	public String handlingException4() throws IOException{
		if(true) {
			//NullPointerException 발생할 수 있음.
			throw new IOException("예외 발생한 이유는 어쩌구저쩌고");
		}
		return "redirect:/";
	}
}
