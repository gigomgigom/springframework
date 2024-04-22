package com.mycompany.springframework.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12Dao3;
import com.mycompany.springframework.dao.Ch12Dao4;
import com.mycompany.springframework.dao.Ch12Dao5;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service8 {
	
	//빈관리객체로 지정된 것만 Autowired어노테이션으로 묶을 수 있다.
	
	//Field 주입
	@Autowired private Ch12Dao3 ch12Dao3;
	
	private Ch12Dao4 ch12Dao4;
	private Ch12Dao5 ch12Dao5;
	
	//Constructor 주입
	@Autowired
	public Ch12Service8(Ch12Dao4 ch12Dao4) {
		log.info("생성자 주입 실행");
		this.ch12Dao4 = ch12Dao4;
	}
	//Setter 주입
	@Autowired
	public void setCh12Dao5(Ch12Dao5 ch12Dao5) {
		log.info("setter 주입 실행");
		this.ch12Dao5 = ch12Dao5;
	}
}
