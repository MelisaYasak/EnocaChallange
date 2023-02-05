package mvcspringapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import mvcspringapp.model.Teacher;

@Component
public class TeacherDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createTeacher(Teacher teacher){
		this.hibernateTemplate.saveOrUpdate(teacher);
	}
	
	public List<Teacher> getAllTeacher(){
		List<Teacher> stu = this.hibernateTemplate.loadAll(Teacher.class);
		return stu;
	}
	
	@Transactional 
	public void deleteTeacher(int id){
		Teacher teacher = this.hibernateTemplate.load(Teacher.class, id);
		this.hibernateTemplate.delete(teacher);
	}
	
	public Teacher getSingleTeacher(int id){
		return this.hibernateTemplate.get(Teacher.class, id);
	}
}
