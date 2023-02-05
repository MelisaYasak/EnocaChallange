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

import mvcspringapp.dao.TeacherDao;
import mvcspringapp.model.Teacher;

@Controller
public class TeacherController {
	@Autowired
	private TeacherDao teacherDao;
	
	@RequestMapping("/teacher")
	public String teacherPage(Model model) {
		List<Teacher> teacher= teacherDao.getAllTeacher();
		model.addAttribute("teacher", teacher);
		return "teacher";
	}
	
	@RequestMapping("/add-teacher")
	public String addTeacher(Model model){
		model.addAttribute("title", "Add Teacher");
		return "add_teacher";
	}
	
	@RequestMapping(value="/submit-teacher",  method=RequestMethod.POST)
	public RedirectView handleTeacher(@ModelAttribute Teacher teacher, HttpServletRequest request){
		teacherDao.createTeacher(teacher);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/teacher");
		return redirectView;
	}
	
	@RequestMapping("/delete-teacher/{teacherID}")
	public RedirectView deleteTeacher(@PathVariable("teacherID") int id, HttpServletRequest request){
		teacherDao.deleteTeacher(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/teacher");
		return redirectView;
	}
	
	@RequestMapping("/update-teacher/{teacherID}")
	public String updateTeacherForm(@PathVariable("teacherID") int id, Model model){
		Teacher Teacher = this.teacherDao.getSingleTeacher(id);
		model.addAttribute("teacher", Teacher);
		return "update_teacher";
	}
}
