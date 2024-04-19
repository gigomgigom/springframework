package com.mycompany.springframework.service;

import com.mycompany.springframework.dao.Ch12Dao1;
import com.mycompany.springframework.dao.Ch12Dao2;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service6 {
	private Ch12Dao1 ch12Dao1;
	private Ch12Dao2 ch12Dao2;
	
	//생성자 주입
	public Ch12Service6(Ch12Dao1 chDao1, Ch12Dao2 chDao2) {
		log.info("생성자를 통한 객체주입");
		this.ch12Dao1 = chDao1;
		this.ch12Dao2 = chDao2;
	}
}
