//轮播图片
var num=1;



var speed=20; 
var temp=0;
var tab=$("#demo"); 
var tab1=$("#demo1"); 
var tab2=$("#demo2"); 
tab2.html(tab1.html()); 
function Marquee(){ 
  // alert(tab2.innerWidth());
	if(tab2.innerWidth()-tab.scrollLeft()<=0) 
	  {
	  tab.scrollLeft(tab.scrollLeft()-tab1.innerWidth());
	  temp=tab.scrollLeft();
	 // alert(temp);
       
      }
   else{
	  tab.scrollLeft(temp++);
	// alert( tab.scrollLeft());
      } 
} 


//从数据库获取轮播的图片
function insertImg()
{
   $.ajax(
		   {
			   type:"GET",
			   url:"/news/rollImgs",
			   dataType:"json",
			   async:false,
			   success:function(data)
			   {
				   var html='';
				   $.each(data,function(commentIndex,comment){
					   if(comment['imgUri']!=null)
						   {
						   html=html+'<a href="'+comment['newsUri']+'"><img src="'+comment['imgUri']+'"></a>';
						   
						   }
					   
				   });
				   tab1.html(html);
			   }
		   })
		   
	
}

//中心简介
function getIntro()
{
	var intro=$('.intro');
	$.ajax(
			{
				  type:"GET",
				  url:"../nI/010100.jso",
				  dataType:"json",
				  async: false,
				  success:function(data)
						  {
					        var cen_intro=data.text;
					        cen_intro=cen_intro.substring(4,210)+'……';
					        intro.text(cen_intro);
						  }
			})
}

function asy(fm)
{
	if(!($('input[name="role"]').is(":checked")))
		alert('请选择登录身份！');
	else
		{
		$.ajax(
				{
			
			type:"post",
			url:"/login",
			data:$(fm).serialize(),
			async:true,
			success:function(data){
				var da=data;
				var flag=da.substring(0,1);
				var href=da.substring(1);
				
				if(flag=='1')
					{
					
					alert(href);
					}
					
				else 
					{
					
					window.location.href=href;
					}
					return false;
			                     }
				});
		}
	
	}
$(function()
{
	
	insertImg();
	
	 var MyMar=setInterval("Marquee()",speed); 		
		tab.mouseover(function() {clearInterval(MyMar);}); 
		tab.mouseout(function() {MyMar=setInterval("Marquee()",speed);}); 
    getIntro();
   
    

    
})
