package com.mycompany.springframework.service;

import com.mycompany.springframework.dao.Ch12Dao1;
import com.mycompany.springframework.dao.Ch12Dao2;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service5 {
	private Ch12Dao1 ch12Dao1;
	private Ch12Dao2 ch12Dao2;
	
	public void setCh12Dao1(Ch12Dao1 chDao1) {
		this.ch12Dao1 = chDao1;
	};
	
	public void setCh12Dao2(Ch12Dao2 chDao2) {
		this.ch12Dao2 = chDao2;
	};
}
