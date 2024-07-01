package com.mycompany.springframework.aspect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectLoginCheck {

	@Around("@annotation(com.mycompany.springframework.aspect.LoginCheck)")
	public Object method(ProceedingJoinPoint joinPoint) throws Throwable {
		// 전처리 공통 코드
		log.info("전처리 공통 코드 실행(around에요!)");
		ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		HttpServletRequest request = sra.getRequest();
		HttpSession session = request.getSession();

		String login = (String) session.getAttribute("login");

		if (login == null) {
			log.info("로그인 정보가 없습니다!");
			return "redirect:/ch07/sessionLoginForm";
		} else {
			log.info("로그인 정보가 존재합니다.");
			Object result = joinPoint.proceed(); // Ch14Controller.around() 호출
			return result;
		}

	}

}
