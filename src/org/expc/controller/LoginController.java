package org.expc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.expc.dao.AdminDao;
import org.expc.dao.StudentDao;
import org.expc.dao.TeacherDao;
import org.expc.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("")
public class LoginController {
	@Resource(name="teacherDaoImpl")
	private TeacherDao teacherDao;
	@Resource(name="studentDaoImpl")
	private StudentDao studentDao;
	@Resource(name="adminDaoImpl")
	private AdminDao adminDao;
	@RequestMapping("/login")	
	@ResponseBody public String login(String username, String password, String role,
			HttpSession session,Model model)
	{
		
		User user = null;
		String msg = null;
		if(null==username||null==password||null==role)
			msg = "用户名或密码不能为空";
		if(role.equals("teacher"))
			user = (User) teacherDao.get(username);
		else if(role.equals("admin"))
			user = adminDao.get(username);
		else if(role.equals("student"))
			user = studentDao.get(username);
		else {
			msg = "此身份不存在:"+role;
		}
		if(null == user||!user.getPassword().equals(password)) 
		{
			msg = "错误的用户名或密码";
		}
		
		if(msg!=null)      //登录失败
		{
			msg="1"+msg;
			return msg;
		}
		//登录成功执行下面的动作
		msg="0/"+role;
		session.setAttribute("user", user);
		return msg;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("user");
		return "/home";
	}
}
