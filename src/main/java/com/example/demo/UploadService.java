package com.example.demo;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class UploadService {
	//private static final String SAVE_PATH = "/resources/upload/";
	
	public String saveFile(String saveDir, MultipartFile multipartFile) {
		String originalFileName = multipartFile.getOriginalFilename();
		String newFileName = System.currentTimeMillis() + originalFileName;
		String url = saveDir + "/" + newFileName;
		System.out.println("url : "+url);
		try {
			multipartFile.transferTo(new File(url));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return newFileName;
	}
}
