package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping("/upload")
	public String home(HttpServletRequest request, @RequestParam("myfile") MultipartFile myfile, Model model) {
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload");
		if(myfile.getOriginalFilename().equals("")) return "errorView"; //파일을 선택하지 않았을 경우		
		UploadService uploadService = new UploadService();
		String fileName = uploadService.saveFile(saveDir, myfile);
		model.addAttribute("fileName", fileName);
		
		System.out.println("saveDir : "+saveDir);
		System.out.println("original_Filename : "+myfile.getOriginalFilename());
		System.out.println("new_Filename : "+fileName);
		
		return "imageView";
	}
	
	@RequestMapping("/uploadView")
	public String uploadView() {
		return "uploadView";
	}
}
