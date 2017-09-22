package service;

import java.util.List;

import pojo.Student;

public interface IStudentService extends IBaseService<Student> {
	List<Student> queryByName(String name);
}
