package org.expc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.expc.dao.BaseDao;
import org.expc.entity.News;
import org.expc.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/news")
public class NewsController extends BaseController<News>{
	@Override
	@Resource(name="newsDaoImpl")
	public void setBaseDao(BaseDao baseDao) {
		// TODO Auto-generated method stub
		super.setBaseDao(baseDao);
	}
	@RequestMapping("/add")
	public String add(News entity,Model model,String view,HttpSession session) throws IOException {
		// TODO Auto-generated method stub
		entity.setTime(new Date());
		User u = (User) session.getAttribute("user");
		String pub =u.getName();
		entity.setPublisher(pub);
		entity.setUpdateTime(new Date());
		entity.setUpdatePerson(pub);
		if(view == null||view.equals("")) view= "/admin/newsForm.jsp";
		return super.add(entity, model,view);
	}
	@RequestMapping("/modify")
	public String modify(News entity, Model model,String view,HttpSession session) {
		// TODO Auto-generated method stub
		entity.setUpdateTime(new Date());
		User u = (User) session.getAttribute("user");
		entity.setUpdatePerson(u.getName());
		if(view == null) view= "/admin/newsForm.jsp";
		return super.modify(entity, model,view);
		
	}
	@RequestMapping("/rollImgs")
	@ResponseBody public List rollImgs()
	{
		List<News> list = baseDao.getPage("from News where imgUri is not null order by updateTime desc,rollLevel desc", 1, 6).getData();
		List<TrimNews> ret = new ArrayList<TrimNews>();
		for(News n: list)
		{
			ret.add(new TrimNews(n.getImgUri(),"/news/"+n.getId()+".htm"));
		}
		list = null;
		return ret;
	}
}
class TrimNews
{
	private String imgUri;
	private String newsUri;
	public TrimNews() {
		// TODO Auto-generated constructor stub
	}
	public TrimNews(String img,String news) {
		// TODO Auto-generated constructor stub
		imgUri = img;
		newsUri = news;
	}
	public String getImgUri() {
		return imgUri;
	}
	public void setImgUri(String imgUri) {
		this.imgUri = imgUri;
	}
	public String getNewsUri() {
		return newsUri;
	}
	public void setNewsUri(String newsUri) {
		this.newsUri = newsUri;
	}
	
	
}