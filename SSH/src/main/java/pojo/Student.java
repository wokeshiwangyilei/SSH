package pojo;
// 产生于 2017-9-21 15:09:24 通过hibernate工具 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 一个数据库表里的实体类文件 使用hibernate自动生成
 */
@Entity
@Table(name = "student", catalog = "bdm290462299_db")
public class Student implements java.io.Serializable {

	private static final long serialVersionUID = 4266267851932084221L;
	private int id;
	private String name;
	private Integer age;

	public Student() {
	}

	public Student(int id) {
		this.id = id;
	}

	public Student(int id, String name, Integer age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "age")
	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", age=" + age + "]";
	}

}
