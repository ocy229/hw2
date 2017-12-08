package kr.ac.hansung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Take;
import kr.ac.hansung.service.TakeService;

@Controller
public class TakeController {

	@Autowired
	private TakeService takeService;

	@RequestMapping("/takes")
	public String showTakes(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);

		return "takes";
	}

	@RequestMapping("/sem_credits")
	public String showSemCredits(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "sem_credits";
	}
	
	@RequestMapping("/div_credits")
	public String showDivCredits(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);

		return "div_credits";
	}

	@RequestMapping("/course_reg")
	public String courseReg(Model model) {
		model.addAttribute("take", new Take());
		
		return "course_reg";
	}
	
	@RequestMapping("/doreg")
	public String doReg(Model model, Take take) {
		take.setYear(2018);
		take.setSemester(1);
		take.setDivision("미정");
		take.setCredits(0);
		
		takeService.insert(take);
		
		return "course_reg";
	}
	
	@RequestMapping("/courses")
	public String showCourses(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);

		return "courses";
	}
	
	@RequestMapping("/a")
	public String showA(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "a";
	}
	@RequestMapping("/b")
	public String showB(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "b";
	}
	@RequestMapping("/c")
	public String showC(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "c";
	}
	@RequestMapping("/d")
	public String showD(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "d";
	}
	@RequestMapping("/e")
	public String showE(Model model) {
		List<Take> takes = takeService.getCurrent();
		model.addAttribute("takes", takes);
		
		return "e";
	}
}
