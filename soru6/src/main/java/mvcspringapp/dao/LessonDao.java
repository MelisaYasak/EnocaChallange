package mvcspringapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import mvcspringapp.model.Lesson;


@Component
public class LessonDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createLesson(Lesson lesson){
		this.hibernateTemplate.saveOrUpdate(lesson);
	}
	
	public List<Lesson> getAllLesson(){
		List<Lesson> lesson = this.hibernateTemplate.loadAll(Lesson.class);
		return lesson;
	}
	
	@Transactional 
	public void deleteLesson(int id){
		Lesson lesson = this.hibernateTemplate.load(Lesson.class, id);
		this.hibernateTemplate.delete(lesson);
	}
	
	public Lesson getSingleLesson(int id){
		return this.hibernateTemplate.get(Lesson.class, id);
	}
}
