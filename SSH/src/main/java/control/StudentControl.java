package control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Student;
import service.IStudentService;
/**
 * 
* @ClassName: StudentControl 
* @Description: 网址的映射文件     这里只测试了几个DAO的方法,其他的方法可以自行测试
*
* @author 王亦雷 
* @date 2017年9月22日 下午8:03:49 
*
 */
@Controller//控制层  注释
public class StudentControl {
	@Autowired//自动注入  注解
	private IStudentService iStudentService;
	
	@RequestMapping("/del")//方法映射地址 注解   '/del'为网址
	@ResponseBody//作用:  若返回String 则返回的字符串直接打印到网页上
	public String del(int id) {
		Student student=new Student(id);
		iStudentService.delete(student);
		return student.toString();
	}
	
	@RequestMapping("/add") //在网址http://xxx.xxx.xxx:8080/项目名/add?id=1&name=老王&age=15  
	@ResponseBody            // 在前端网页里边的form表单提交的时候input的name值与方法里的变量名一直就可以提交上来
	public String add(int id,String name ,int age) {
		Student student=new Student(id, name, age);
		iStudentService.save(student);
		return student.toString();
	}
	
	@RequestMapping("/index") 
	public String index() {
		return "/index.jsp";// 如果不加 @ ResponseBody 就直接返回/index.jsp的网页显示在网页上
	}
}
