package dao;

import org.springframework.stereotype.Repository;

import pojo.Student;

@Repository("StudentDAO")
public class StudentDAOImp  extends BaseDaoImpl<Student> implements IStudentDAO{


}
