package org.expc.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.expc.dao.BaseDao;
import org.expc.entity.BaseDomain;
import org.expc.entity.News;
import org.expc.setting.Constant;
import org.expc.util.CommonUtil;
import org.expc.util.PageBean;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
public  class BaseController<T>{
	protected BaseDao<T> baseDao;

	public void setBaseDao(BaseDao baseDao)
	{
		this.baseDao = baseDao;
	}
	@RequestMapping("/add")
    public String add(T entity,Model model,String view) throws IOException
	{
		String msg="添加成功";
		if(!baseDao.save(entity))
			msg="添加失败";
		model.addAttribute("msg", msg);
		model.addAttribute("ele", entity);
		return view;
	}
	
	
	@RequestMapping("/delete")
	@ResponseBody public String delete(String[] id)
	{
		if(id==null) return "没有选中任何内容";
		StringBuilder sb = new StringBuilder();
		int count = 0;
		for(Serializable s:id)
			if(!baseDao.remove(s))
			{
				count++;
				sb.append("id为"+s+"的条目 删除失败");
			}
		if(count==0)
		return "删除成功";
		else return sb.append(count+"个错误").toString();
	}
	
	@RequestMapping("/{view}/{id}.fm")
	public String modifyForm(@PathVariable String view, @PathVariable String id, Model model)
	{
		Serializable s = id;
		T ele = baseDao.get(s);
		model.addAttribute("ele", ele);
		model.addAttribute("action", "modify");
		return "/admin/"+view+".jsp";
	}
	@RequestMapping("/modify")
	 public String modify(T entity, Model model,String view)
	{
		String msg= null;
		if(baseDao.update(entity))
		msg= "修改成功";
		else msg= "修改失败";
		model.addAttribute("msg", msg);
		model.addAttribute("ele", entity);
		model.addAttribute("action", "modify");
		return view;
	}
	@RequestMapping(value="/{pageIndex}/{pageSize}.htm" )
	public String getPageRView(@PathVariable Integer pageIndex,@PathVariable Integer pageSize,Model model,
			String view)
	{
		PageBean<T> pb = baseDao.getPage(pageIndex, pageSize);
		model.addAttribute("pb", pb);
		if(null == view) 
		return "/"+CommonUtil.fLTLC(baseDao.getEntityClass().getSimpleName())+"List.jsp";
		return view;
	}

	@RequestMapping("{id}.htm")
	public String findOne(@PathVariable String id, Model model,String view){
		T ele = baseDao.get(id);
		model.addAttribute("ele", ele);
		return "/"+CommonUtil.fLTLC(baseDao.getEntityClass().getSimpleName())+"Detail.jsp";
	}
}
