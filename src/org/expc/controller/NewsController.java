package org.expc.controller;

import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.News;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController<News>{
	@Override
	@Resource(name="newsDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	
}
