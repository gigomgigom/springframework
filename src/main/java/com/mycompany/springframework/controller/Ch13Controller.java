package com.mycompany.springframework.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch13Board;
import com.mycompany.springframework.dto.Ch13Pager;
import com.mycompany.springframework.service.Ch13Service;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch13")
public class Ch13Controller {

	@Autowired
	private Ch13Service service;

	@GetMapping("/writeBoardForm")
	public String writeBoardForm() {
		return "ch13/writeBoardForm";
	}

	@PostMapping("/writeBoard")
	public String writeBoard(Ch13Board board) {
		//요청 데이터의 유효성 검사
		log.info("original filename : " + board.getBattach().getOriginalFilename());
		log.info("filetype: " + board.getBattach().getContentType());

		//전달받은 데이터들 중에서 첨부 파일이 존재하는지 조사
		if(board.getBattach() != null && !board.getBattach().isEmpty()) {

			//DTO에 추가 설정(첨부파일의 정보들을 DB에 저장)
			board.setBattachoname(board.getBattach().getOriginalFilename());
			board.setBattachtype(board.getBattach().getContentType());
			try {
				board.setBattachdata(board.getBattach().getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		//로그인된 사용자 ID 설정
		board.setMid("user");
		//비즈니스 로직 처리를 서비스로 위임한다.
		service.writeBoard(board);


		return "redirect:/ch13/boardList";
	}

	@GetMapping("/boardList")
	public String boardList(String pageNo, Model model, HttpSession session) {
		if(pageNo == null) {
			//pageNo를 받지 못했을 경우 세션에 저장되어 있는 값을 가져와서 확인한다.
			pageNo = (String) session.getAttribute("pageNo");
			if(pageNo == null) {
				//세션에 마저도 pageNo가 저장되어있지 않다면 "1"로 강제 세팅
				pageNo = "1";
			}
		}
		//세션에 pageNo저장
		session.setAttribute("pageNo", pageNo);
		//문자열인 pageNo를 정수로 변환
		int intPageNo = Integer.parseInt(pageNo);

		//Pager 객체 생성
		int rowsPagingTarget = service.getTotalRows();
		Ch13Pager pager = new Ch13Pager(10, 10, rowsPagingTarget, intPageNo);

		//Service에게 게시물 목록을 요청
		List<Ch13Board> boardList = service.getBoardList(pager);

		//JSP에서 사용할 수 있도록 설정
		model.addAttribute("pager", pager);
		model.addAttribute("boardList", boardList);
		return "ch13/boardList";
	}

	@GetMapping("/detailBoard")
	public String detailBoard(int bno, Model model) {
		Ch13Board board = service.getBoard(bno);
		model.addAttribute("board", board);
		return "ch13/detailBoard";
	}

	@GetMapping("/attachDownload")
	public void attachDownload(int bno, HttpServletResponse response) throws IOException {
		//다운로드할 데이터를 준비
		Ch13Board board = service.getBoard(bno);
		byte[] data = service.getAttachData(bno);

		//응답 헤더 구성
		response.setContentType(board.getBattachtype());
		String fileName = new String(board.getBattachoname().getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("Content-Disposition", "attachment; filename=\""+ fileName + "\"");
		//응답 본문에 파일 데이터 출력
		OutputStream os = response.getOutputStream();
		os.write(data);
		os.flush();
		os.close();
	}

	@GetMapping("/updateBoardForm")
	public String updateBoardFrom(int bno, Model model) {
		Ch13Board board = service.getBoard(bno);
		model.addAttribute("board", board);
		return "ch13/updateBoardForm";
	}

	@PostMapping("/updateBoard")
	public String updateBoard(Ch13Board board) {

		//전달받은 데이터들 중에서 첨부 파일이 존재하는지 조사
		if(board.getBattach() != null && !board.getBattach().isEmpty()) {

			//DTO에 추가 설정(첨부파일의 정보들을 DB에 저장)
			board.setBattachoname(board.getBattach().getOriginalFilename());
			board.setBattachtype(board.getBattach().getContentType());
			try {
				board.setBattachdata(board.getBattach().getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		//비즈니스 로직 처리를 서비스로 위임한다.
		service.updateBoard(board);


		return "redirect:/ch13/detailBoard?bno=" + board.getBno();
	}
	
	@GetMapping("/deleteBoard")
	public String deleteBoard(int bno) {
		service.removeBoard(bno);
		return "redirect:/ch13/boardList";
	}
}
