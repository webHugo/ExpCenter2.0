package org.expc.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.filefilter.PrefixFileFilter;
import org.expc.entity.NavItem;
import org.expc.setting.Constant;
import org.expc.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/file")
public class FileController {
	@Resource 
	private ServletContext servletContext;
	public final static String[] fileCate={"exercise",//链接
			"courseware",//下载
			"video"};//观看
	final String basePath = "courseFile";
	private  final String manageView="/teacher/manageFile.jsp",
			listView="/listFile.jsp";
	//上传文件 
    @RequestMapping(value = "/upload.do")  
    public String upload(@RequestParam(value = "file1", required = false) MultipartFile file, String servletPath, ModelMap model) {  
  
       
        String path=toRealPath(servletPath);
        String fileName = file.getOriginalFilename();  
//        String fileName = new Date().getTime()+".jpg";  
      
        File targetFile = new File(path, fileName);  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }  
  
        
        try {  
            file.transferTo(targetFile);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        
        return "redirect:list?servletPath="+servletPath;  
    }  

	
	//返回上一个目录
	@RequestMapping("/preFile")
	public String PrefixFile(String servletPath){
		String path=servletPath.substring(0,servletPath.lastIndexOf("/"));
		return "redirect:list?servletPath="+path;
		
	}
	//创建文件夹
		@RequestMapping("/createFile")
	    public String createFile(String name,String servletPath, HttpServletRequest request, ModelMap model){
		
			String path=toRealPath(servletPath);	
			
	    	File targetFile = new File(path, name);  
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	    	return "redirect:list?servletPath="+servletPath;
		
		}
	
	@RequestMapping("/list")
	ModelAndView list(String servletPath, String view)
	{
		
		if(!validate(servletPath)) return illeageAccess("路径不能为空");
		File file=new File(toRealPath(servletPath));
		if(!file.exists()) return illeageAccess("你要访问的位置不存在");
		File[] files=file.listFiles();
		if(view==null) view=listView;
		ModelAndView mav=new ModelAndView(view);
		mav.addObject("files",files);	
		mav.addObject("servletPath",servletPath);
		mav.addObject("view", view);
		
		return mav;
	}
	@RequestMapping("/delete")
	public ModelAndView delete(String servletPath, String [] fileNames,
			HttpServletRequest request,String view)
	{
		System.out.println(view);
		System.out.println(servletPath);
		for(String name:fileNames)
			System.out.println(name);
		if(!isLegal(request)) return new ModelAndView(Constant.LOGIN).
				addObject("notice","请登录");
		String msg="路径错误";
		if(!validate(servletPath)) return illeageAccess(msg);
		String filePath =toRealPath(servletPath);
		System.out.println(filePath);
		File file=new File(filePath);
		for(String name:fileNames)
			new File(file,name).delete();
		return list(servletPath,view);
	}
	
	@RequestMapping(value="/download")
	public ModelAndView download(HttpServletResponse response,String servletPath,
			HttpServletRequest request)
	{
		System.out.println(servletPath);
		if(!isLegal(request)) return new ModelAndView(Constant.LOGIN).
				addObject("notice","请登录");
		String msg="路径错误";
		if(!validate(servletPath)) return illeageAccess(msg);
		File file=new File(toRealPath(servletPath));
		
		if(!file.exists()||file.isDirectory()){ 
		
			return illeageAccess("要下载的文件不存在");
		}
		response.setContentType("application/octet-stream");
		response.addHeader("Content-Disposition","attachment;filename="+
		file.getName());
		try(BufferedInputStream bis=new BufferedInputStream(new FileInputStream(file));
			OutputStream os = response.getOutputStream();
			BufferedOutputStream bos=new BufferedOutputStream(os)) 
		{
			
			byte[] bytes=new byte[8*1024];
			int i;
			while((i=bis.read(bytes))>0)
			{
				bos.write(bytes, 0, i);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			return null;
	}
	
	
	private ModelAndView illeageAccess(String msg)
	{
		ModelAndView mav =new ModelAndView(Constant.RESULT);
		mav.addObject("msg",msg);
		return mav;
	}
	private boolean isLegal(HttpServletRequest request)
	{
		return true;
	}
	String toRealPath(String servletPath)
	{
		return (servletContext.getRealPath("/courseFile")+"\\"+servletPath).replace('\\', '/');
	}
	boolean validate(String servletPath)
	{
		
		if(null==servletPath)
				return false;
		return true;
	}
	 
}
