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
	public String login(String username, String password, String role,
			HttpSession session,Model model)
	{
		
		User user = null;
		String msg = null;
		if(null==username||null==password||null==role)
			msg = "username, password and role must not be empty!";
		if(role.equals("teacher"))
			user = (User) teacherDao.get(username);
		else if(role.equals("admin"))
			user = adminDao.get(username);
		else if(role.equals("student"))
			user = studentDao.get(username);
		else {
			msg = "parameter error! wrong role!";
		}
		if(null == user||!user.getPassword().equals(password)) 
		{
			msg = "wrong username or password";
		}
		if(msg!=null)
		{
			model.addAttribute("msg", msg);
			model.addAttribute("username",username);
			model.addAttribute("password",password);
			model.addAttribute("role", role);
			return "loginPage";
		}
		session.setAttribute("user", user);
		return "redirect:/admin";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.removeAttribute("user");
		return "redirect:loginPage";
	}
}
