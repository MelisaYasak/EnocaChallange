package mvcspringapp.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import mvcspringapp.dao.LessonDao;
import mvcspringapp.model.Lesson;

@Controller
public class LessonController {
	
	@Autowired
	private LessonDao lessonDao;
	
	@RequestMapping("/")
	public String home(){
		return "index";
	}
	@RequestMapping("/lesson")
	public String lessonpage(Model model) {
		List<Lesson> Lesson= lessonDao.getAllLesson();
		model.addAttribute("lessons", Lesson);
		return "lesson";
	}
	
	@RequestMapping("/add-lesson")
	public String addLesson(Model model){
		model.addAttribute("title", "Add Lesson");
		return "add_lesson";
	}
	
	@RequestMapping(value="/submit-lesson",  method=RequestMethod.POST)
	public RedirectView handleLesson(@ModelAttribute Lesson lesson, HttpServletRequest request){
		lessonDao.createLesson(lesson);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/lesson");
		return redirectView;
	}
	
	@RequestMapping("/delete-lesson/{lessonID}")
	public RedirectView deleteLesson(@PathVariable("lessonID") int id, HttpServletRequest request){
		lessonDao.deleteLesson(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/lesson");
		return redirectView;
	}
	
	@RequestMapping("/update-lesson/{lessonID}")
	public String updateLessonForm(@PathVariable("lessonID") int id, Model model){
		Lesson Lesson = this.lessonDao.getSingleLesson(id);
		model.addAttribute("lesson", Lesson);
		return "update_lesson";
	}
}
