package com.mycompany.springframework.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class Ch04SignUpFormValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Ch04SignUpForm.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Ch04SignUpForm signUpForm = (Ch04SignUpForm) target;
		
		//입력정보와 정규식표현
		String mid = signUpForm.getMid();
		
		String mpassword = signUpForm.getMpassword();
		String pwPattern = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}";
		
		String mname = signUpForm.getMname();
		String namePattern = "^[가-힣]{2,4}";
		
		String mphoneno = signUpForm.getMphoneno();
		String phonePattern = "^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}";
		
		String memail = signUpForm.getMemail();
		String emailPattern = "^[a-zA-Z0-9+-\\_.]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$";
		
		//아이디 검사
		if(mid==null || mid.equals("")) {
			errors.rejectValue("mid", null, "ID는 반드시 입력되어야 합니다.");
		} else if(mid.length() < 6 || mid.length() > 12) {
			errors.rejectValue("mid", null, "ID는 6자 이상, 12자 이하로 입력해야합니다.");
		}

		//비밀번호 검사
		if(mpassword==null || mpassword.equals("")) {
			errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력되어야 합니다.");
		} else if(mpassword.length() < 8 || mpassword.length() > 15) {
			errors.rejectValue("mpassword", null, "비밀번호는 8자 이상, 15자 이하로 입력해야합니다.");
		} else if(!Pattern.matches(pwPattern, mpassword)) {
			errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함해야합니다.");
		}
		
		//이름 검사
		if(mname==null || mname.equals("")) {
			errors.rejectValue("mname", null, "이름이 반드시 입력되어야 합니다.");
		} else if(!Pattern.matches(namePattern, mname)) {
			errors.rejectValue("mname", null, "한글로 2~4글자가 입력되어야 합니다.");
		}
		
		//전화번호 검사
		if(mphoneno==null || mphoneno.equals("")) {
			errors.rejectValue("mphoneno", null, "전화번호가 반드시 입력되어야 합니다.");
		} else if(!Pattern.matches(phonePattern, mphoneno)) {
			errors.rejectValue("mphoneno", null, "예시)010-2810-4870 다음과 같이 입력하셔야합니다. ");
		}
		
		//이메일 검사
		if(memail==null || memail.equals("")) {
			errors.rejectValue("memail", null, "이메일은 반드시 입력되어야 합니다.");
		} else if(!Pattern.matches(emailPattern, memail)) {
			errors.rejectValue("memail", null, "예시)tlarlrma@naver.com 다음과 같이 입력하세요.");
		}
		
	}

}
