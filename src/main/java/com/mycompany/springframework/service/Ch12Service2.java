package com.mycompany.springframework.service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service2 {
	private Ch12Service2() {
		log.info("싱글톤 객체 생성");
	}
	//정적메소드의 리턴값으로 빈 객체 생성
	public static Ch12Service2 getInstance() {
		log.info("객체가 리턴되었음");
		return new Ch12Service2();
	}
}
