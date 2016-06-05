package org.expc.controller;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.expc.dao.BaseDao;
import org.expc.entity.NavItem;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/nI")
public class NavItemController extends BaseController<NavItem>{
	@Override
	@Resource(name="nIDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	@RequestMapping("/addWithFile")
	@ResponseBody public String add(NavItem entity,MultipartFile htmlFile) throws IOException {
		// TODO Auto-generated method stub
		if(htmlFile!=null&&htmlFile.getBytes().length>0)
		{
			entity.setContent(new String(htmlFile.getBytes()));
		}
		return add(entity);
	}
	@RequestMapping("/modifyWithFile")
	@ResponseBody public String modify(NavItem entity,MultipartFile htmlFile) throws IOException {
		// TODO Auto-generated method stub
		if(htmlFile!=null&&htmlFile.getBytes().length>0)
		{
			entity.setContent(new String(htmlFile.getBytes()));
		}
		return modify(entity);
	}
	@RequestMapping("/download/{id}")
	public void download(@PathVariable String id, HttpServletResponse res)
	{
		NavItem nI = baseDao.get(id);
		try(BufferedOutputStream bos = new BufferedOutputStream(res.getOutputStream()))
		{
			if(null!=nI){
				res.setContentType("text/html;charset=UTF-8");
				res.addHeader("Content-Disposition", "attachment;filename="+id+".html");
				bos.write(nI.getContent().getBytes());
			}
			else bos.write("要下载的文件不存在".getBytes());
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
