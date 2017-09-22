package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import dao.IStudentDAO;
import pojo.Student;

@Service
public class StudentServiceImp extends BaseServiceImp<Student>  implements IStudentService {
	
	private IStudentDAO iStudentDAO;

	@Autowired
	@Qualifier("StudentDAO")
	public void setiStudentDAO(IStudentDAO iStudentDAO) {
		this.iStudentDAO = iStudentDAO;
		this.setiBaseDAO(iStudentDAO);
		
	}

	public List<Student> queryByName(String name) {
		String hql = "from UserInfor where name1 like ?";
		//模糊查询
		String newName = "%"+name+"%";
		
		@SuppressWarnings("unchecked")
		List<Student> list= iStudentDAO.find(hql, newName);
		
		return list;
	}
	

}
