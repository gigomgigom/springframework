package com.mycompany.springframework.aspect;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectAfterThrowing {
	
	@AfterThrowing(
		pointcut="execution(public * com.mycompany.springframework.controller.Ch14Controller.*(..))",
		throwing="exception"
	)
	public void method(Throwable exception) {
		log.info("후처리 코드 실행(^^ㅣ뱅 예외발생!)");
		if(exception instanceof NullPointerException) {
			log.info("예외 발생: " + exception);
		} else if(exception instanceof NumberFormatException) {
			log.info("예외 발생: " + exception);
		}
		log.info("예외 발생: " + exception);
	}
	
}
