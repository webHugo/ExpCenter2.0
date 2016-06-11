package org.expc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.expc.dao.BaseDao;
import org.expc.entity.News;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	@Override
	public String add(News entity,Model model,String view) throws IOException {
		// TODO Auto-generated method stub
		entity.setTime(new Date());
		entity.setPublisher("a:lds");
		entity.setUpdateTime(new Date());
		entity.setUpdatePerson("a:lds");
		if(view == null||view.equals("")) view= "/admin/newsForm.jsp";
		return super.add(entity, model,view);
	}
	@Override
	public String modify(News entity, Model model,String view) {
		// TODO Auto-generated method stub
		entity.setUpdateTime(new Date());
		if(view == null) view= "/admin/newsForm.jsp";
		return super.modify(entity, model,view);
		
	}
	@RequestMapping("/rollImgs")
	@ResponseBody public List rollImgs()
	{
		List<News> list = baseDao.getPage("from News order by time desc,rollLevel desc", 1, 10).getData();
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