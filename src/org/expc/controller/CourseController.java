package org.expc.controller;

import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.Course;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
@RequestMapping("/course")
public class CourseController extends BaseController<Course> {
	@Override
	@Resource(name="courseDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
}
