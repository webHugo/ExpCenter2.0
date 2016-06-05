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


$(function()
{
	
	var MyMar=setInterval("Marquee()",speed); 
	tab.mouseover(function() {clearInterval(MyMar);}); 
	tab.mouseout(function() {MyMar=setInterval("Marquee()",speed);}); 

})
