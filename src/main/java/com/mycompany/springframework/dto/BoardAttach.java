package com.mycompany.springframework.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardAttach {
	private String battachoname;
	private String battachsname;
	private String battachtype;
	private byte[] battachdata;
	
	private MultipartFile battach;
}
