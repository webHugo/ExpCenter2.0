package org.expc.controller;

import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.Board;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController extends BaseController<Board>{
	@Override
	@Resource(name="boardDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	
}
