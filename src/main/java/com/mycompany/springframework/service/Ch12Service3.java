package com.mycompany.springframework.service;

import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Ch12Service3 {
	//어노테이션으로 객체 생성
	public Ch12Service3() {
		log.info("객체 생성");
	}
}
