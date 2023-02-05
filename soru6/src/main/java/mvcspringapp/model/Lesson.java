package mvcspringapp.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Lesson {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String code;
	private String name;
	private int numofStu;
	

	public Lesson(int id, String name, String code, String teacher, int numofStu, int teacher_id) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.numofStu = numofStu;
		this.teacher = new Teacher();
		this.teacher.setId(teacher_id);

	}

    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getnumofStu() {
		return numofStu;
	}

	public void setnumofStu(int numofStu) {
		this.numofStu = numofStu;
	}

	public Lesson() {
		super();
	}
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="teacher_id",referencedColumnName = "ID")
    private Teacher teacher;

	@Override
	public String toString() {
		return "Lesson [id=" + id + ",code=" + code + ", name=" + name + ", number of students=" +  numofStu+"]";
	}
}
