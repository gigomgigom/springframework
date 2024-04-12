package com.mycompany.springframework.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.springframework.dto.FileInfo;
import com.mycompany.springframework.interceptor.Auth;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/ch02")
@Slf4j
public class Ch02Controller {
	@RequestMapping("/getMethod")
	public String getMethod(String chNum, String bkind, String bno, Model model) {
		//요청 처리 코드
		log.info("getMethod() 실행");

		model.addAttribute("chNum", chNum);
		log.info("chNum: " + chNum);
		log.info("bkind: " + bkind);
		log.info("bno: " + bno);
		return "ch02/getMethod";
	}

	@RequestMapping(value="/getMethodAjax", method=RequestMethod.GET)
	public String getMethodAjax(String bkind, String bno, Model model) {
		//요청 처리 코드
		log.info("getMethodAjax() 실행");

		log.info("bkind: " + bkind);
		log.info("bno: " + bno);
		return "ch02/getMethodAjax";
	}

	@RequestMapping("postMethod")
	public String getMethod2(String chNum, String mid, String mpassword, Model model) {
		//요청 처리 코드
		log.info("getMethod() 실행");

		model.addAttribute("chNum", chNum);
		log.info("chNum: " + chNum);
		log.info("mid: " + mid);
		log.info("mpassword: " + mpassword);
		return "ch02/postMethod";
	}

	@RequestMapping("/postMethodAjax")
	public void postMethodAjax(String mid, String mpassword, HttpServletResponse response) throws IOException {
		//요청 처리 코드
		log.info("postMethodAjax() 실행");
		log.info("mid: " + mid);
		log.info("mpassword: " + mpassword);

		Map<String, String> map = new HashMap<>();
		map.put("spring", "12345");
		map.put("summer", "67890");

		JSONObject result = new JSONObject();
		if(map.containsKey(mid)) {
			if(map.get(mid).equals(mpassword)) {
				//로그인 성공
				result.put("result", "success");
			} else {
				//비빌번호가 틀린 경우
				result.put("result", "fail");
				result.put("reason", "wrongMpassword");
			}
		} else {
			//아이디가 존재하지 않는 경우
			result.put("result", "fail");
			result.put("reason", "wrongMid");
		}

		//직접 응답을 생성해서 브라우저로 보냄 (JSP를 거치지않고 컨트롤러가 직접 응답 HTTP를 기입해서 브라우저에게 응답한다.)
		PrintWriter pw = response.getWriter();
		response.setContentType("application/json; charset=UTF-8");
		pw.println(result.toString());
		pw.flush();
		pw.close();
	}
	
	@GetMapping("/modelAndViewReturn")
	public ModelAndView modelAndViewReturn(String chNum) {
		log.info("modelAndViewReturn() 실행");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("chNum", chNum);
		modelAndView.addObject("isLoginSuccessful", true);
		modelAndView.addObject("userName", "감자바");
		modelAndView.setViewName("ch02/modelAndViewReturn");
		return modelAndView;
	}
	
	@GetMapping("/voidReturn")
	public void imageDownload(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//다운로드할 이미지 파일 선택
		String fileName = "photo1.jpg";
		//실제 파일의 경로 얻기 
		//url상의 경로(상대경로)
		String urlPath = "/resources/image/photos/photo1.jpg";
		//시스템상 파일 경로(절대경로)
		String fileSystemPath = request.getServletContext().getRealPath(urlPath);
		log.info("fileSystemPath : " + fileSystemPath);
		//파일의 MIME 타입 얻기
		String mimeType = request.getServletContext().getMimeType(fileSystemPath);
		log.info(mimeType);
		
		//파일 데이터를 읽는 입력 스트림을 얻기
		InputStream is = new FileInputStream(fileSystemPath);
		
		//응답 본문에 데이터를 넣는 출력 스트림을 얻기
		OutputStream os = response.getOutputStream();
		
		//응답헤더에 Content-Type 작성
		response.setContentType(mimeType);
		
		//응답 본문에 데이터 싣기
		//입력 스트림에서 데이터를 읽고 -> 출력 스트림으로 데이터를 쓰기
		/*방법1
		byte[] bytes = new byte[1024];
		while(true) {
			int readNum = is.read(bytes);
			if(readNum == -1) break;
			os.write(bytes, 0, readNum);
		}*/
		
		//방법2
		FileCopyUtils.copy(is, os);
		os.flush();
		is.close();
		os.close();
	}
	
	@GetMapping("/objectReturn")
	public String objectReturn(String chNum, Model model) {
		model.addAttribute(chNum);
		return "ch02/objectReturn";
	}
	
	@GetMapping(value = "/objectReturnJson1", produces= "application/json; charset=UTF-8")
	@ResponseBody //리턴된 객체를 JSON객체로 해석하고 응답 본문에 넣겠다.
	public String objectReturnJson1() {
		log.info("objectReturnJson1 실행");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("fileName", "photo1.jpg");
		return jsonObject.toString();
	}
	
	@GetMapping(value = "/objectReturnJson2", produces = "application/json; charset=UTF-8")
	@ResponseBody //리턴된 객체를 JSON객체로 변환하고 응답 본문에 넣겠다.
	public FileInfo objectReturnJson2() {
		FileInfo fileInfo = new FileInfo();
		fileInfo.setFileName("photo2.jpg");
		fileInfo.setInfo("아름다운 풍경사진");
		return fileInfo;
	}
	
	@GetMapping("/testAuthInterceptor1")
	public String testAuthInterceptor1(String chNum, Model model) {
		log.info("testAuthInterceptor1() 실행");
		return "ch02/testAuthInterceptor1";
	}
	
	@Auth
	@GetMapping("/testAuthInterceptor2")
	public String testAuthInterceptor2(String chNum, Model model) {
		log.info("testAuthInterceptor2() 실행");
		return "ch02/testAuthInterceptor2";
	}
}
