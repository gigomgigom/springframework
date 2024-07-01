package com.mycompany.springframework.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectAround {
	
	@Around("execution(public * com.mycompany.springframework.controller.Ch14Controller.around(..))")
	public Object method(ProceedingJoinPoint joinPoint) throws Throwable {
		//전처리 공통 코드
		log.info("전처리 공통 코드 실행(around에요!)");
		
		Object result = joinPoint.proceed(); //Ch14Controller.around() 호출
		
		//후처리 공통 코드
		log.info("후처리 공통 코드 실행(around에요!)");
		
		return result;
	}
	
}
