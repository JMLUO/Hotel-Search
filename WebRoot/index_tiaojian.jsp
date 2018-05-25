<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>菜单页面</title>
    <script type="text/javascript" src="JS/WdatePicker.js"></script> 
    <script type="text/javascript" src="JS/sort.js"></script> 
	<script src="JS/dist/js/jquery.js"></script><!-- jQuery is required -->
	<script src="JS/dist/js/city-picker.data.js"></script>
	<script src="JS/dist/js/city-picker.js"></script>
	<link rel="stylesheet" type="text/css" href="JS/dist/css/city-picker.css"/>
    
    <script type="text/javascript">
    	 	var times1 = 0;//点击次数  
			var preClickTime1 ;//上一次点击的时间（毫秒）  
			var currentClickTime1;//当前点击时间 
			$(document).ready(function(){
  			$("#star").click(function(){
    			$("#star").replaceWith("<a href=\"javascript:countClickedTimes1();\" target=\"content\"  id=\"star1\" >星级&#8595;<a>");
 				});
 			});
			function countClickedTimes1(){  
				if(times1 === 0){  
					preClickTime1 = new Date().getTime();//首次点击的时间  
					times1 ++; 
					console.log(times1);
					if(times1==1){
						window.parent.content.location.href='detail.jsp?id=1';
						$(document).ready(function(){
  							$("#star1").click(function(){
    							$("#star1").replaceWith("<a href=\"javascript:countClickedTimes1();\" target=\"content\"  id=\"star\" >星级&#8593;<a>");
 							});
						});
					}   
					return;  
				}
				$(document).ready(function(){
  					$("#star").click(function(){
    					$("#star").replaceWith("<a href=\"javascript:countClickedTimes1();\" target=\"content\"  id=\"star1\" >星级&#8595;<a>");
 					});
 				});
		  		currentClickTime1 = new Date().getTime();  
				preClickTime1 = currentClickTime1;  
				times1 ++ ;  
				console.log(times1);
				if(times1%2==0){
					window.parent.content.location.href='detail.jsp?id=2';
				}  
				else{
					window.parent.content.location.href='detail.jsp?id=1';
					$(document).ready(function(){
						$("#star1").click(function(){
    						$("#star1").replaceWith("<a href=\"javascript:countClickedTimes1();\" target=\"content\" id=\"star\" >星级&#8593;<a>");
  						});
  					});
				}
			}
			var times2 = 0;//点击次数  
			var preClickTime2 ;//上一次点击的时间（毫秒）  
			var currentClickTime2;//当前点击时间 
			$(document).ready(function(){
  			$("#grade").click(function(){
    			$("#grade").replaceWith("<a href=\"javascript:countClickedTimes2();\" target=\"content\"  id=\"grade1\" >评分&#8595;<a>");
 				});
 			});
			function countClickedTimes2(){  
				if(times2 === 0){  
					preClickTime2 = new Date().getTime();//首次点击的时间  
					times2 ++; 
					console.log(times2);
					if(times2==1){
						window.parent.content.location.href='detail.jsp?id=3';
						$(document).ready(function(){
  							$("#grade1").click(function(){
    							$("#grade1").replaceWith("<a href=\"javascript:countClickedTimes2();\" target=\"content\"  id=\"grade\" >评分&#8593;<a>");
 							});
						});
					}   
					return;  
				}
				$(document).ready(function(){
  					$("#grade").click(function(){
    					$("#grade").replaceWith("<a href=\"javascript:countClickedTimes2();\" target=\"content\"  id=\"grade1\" >评分&#8595;<a>");
 					});
 				});
		  		currentClickTime2 = new Date().getTime();  
				preClickTime2 = currentClickTime2;  
				times2 ++ ;  
				console.log(times2);
				if(times2%2==0){
					window.parent.content.location.href='detail.jsp?id=4';
				}  
				else{
					window.parent.content.location.href='detail.jsp?id=3';
					$(document).ready(function(){
						$("#grade1").click(function(){
    						$("#grade1").replaceWith("<a href=\"javascript:countClickedTimes2();\" target=\"content\" id=\"grade\" >评分&#8593;<a>");
  						});
  					});
				}
			}
			var times3 = 0;//点击次数  
			var preClickTime3 ;//上一次点击的时间（毫秒）  
			var currentClickTime3;//当前点击时间 
			$(document).ready(function(){
  			$("#price").click(function(){
    			$("#price").replaceWith("<a href=\"javascript:countClickedTimes3();\" target=\"content\"  id=\"price1\" >价格&#8595;<a>");
 				});
 			});
			function countClickedTimes3(){  
				if(times3 === 0){  
					preClickTime3 = new Date().getTime();//首次点击的时间  
					times3 ++; 
					console.log(times3);
					if(times3==1){
						window.parent.content.location.href='detail.jsp?id=5';
						$(document).ready(function(){
  							$("#price1").click(function(){
    							$("#price1").replaceWith("<a href=\"javascript:countClickedTimes3();\" target=\"content\"  id=\"price\" >价格&#8593;<a>");
 							});
						});
					}   
					return;  
				}
				$(document).ready(function(){
  					$("#price").click(function(){
    					$("#price").replaceWith("<a href=\"javascript:countClickedTimes3();\" target=\"content\"  id=\"price1\" >价格&#8595;<a>");
 					});
 				});
		  		currentClickTime3 = new Date().getTime();  
				preClickTime3 = currentClickTime3;  
				times3 ++ ;  
				console.log(times3);
				if(times3%2==0){
					window.parent.content.location.href='detail.jsp?id=6';
				}  
				else{
					window.parent.content.location.href='detail.jsp?id=5';
					$(document).ready(function(){
						$("#price1").click(function(){
    						$("#price1").replaceWith("<a href=\"javascript:countClickedTimes3();\" target=\"content\" id=\"price\" >价格&#8593;<a>");
  						});
  					});
				}
			}
	</script>
  </head>
<body>
<hr>
	<div style="position: relative;"><!-- container -->
		<div style="width:5%;float:left"  ></div>
 			<div style="width:40%;float:left" >地点： <input readonly type="text" data-toggle="city-picker" size="60"></div>
			<div style="width:20%; float:left">入住时间：<span><input id="startDate" class="Wdate" type="text" name="intime" 
				onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'endDate\')}',minDate:'%y-%M-%d'})"></span>&nbsp;</div>
			<div style="width:20%; float:left">退房时间：<span><input id="endDate" class="Wdate" type="text" name="outtime" 
				onFocus="WdatePicker({minDate:'#F{$dp.$D(\'startDate\')}'})"></span>&nbsp;</div>
			<div style="width:15%; float:left">
			<input type="button" value="搜  索 " onclick="window.parent.content.location.href='detail.jsp?id=7'"></div>
			<br>
		</div>
		<div>
			<br><br>
			<div style="width:5%;float:left"  ></div>
			价格范围：
			<a href="detail.jsp?id=0" target="content"> 不限 </a>
			<input type="checkbox"> ￥200-￥300&nbsp;&nbsp;
			<input type="checkbox"> ￥300-￥500&nbsp;&nbsp;
			<input type="checkbox"> ￥500以上&nbsp;&nbsp;&nbsp;
			自定义：<input id="test1" type="number" name="min" min="0" max="10000" 
						onblur="if(this.value<0){alert('价格不能小于0！');this.value=0;this.focus();}"/> - 
					<input id="test2" type="number" name="max" min="0" max="10000" 
						onblur="if(this.value<0){alert('价格不能小于0！');this.value=0;this.focus();}"/>&nbsp;&nbsp;	
			<script>
    			function f(){
  					if(parseInt(document.getElementById('test2').value)<parseInt(document.getElementById('test1').value))
  						alert('终值不能小于起始值');
    			}      
  				document.getElementById('test2').onblur=f;  
				document.getElementById('test2').onkeyup=function(e){
     	 			e=e||window.event;
      				if(e.keyCode==13)f();//键盘回车事件
    			}
    		</script>
			<input type="submit" value="确  定 ">		
			<hr>
		</div>
		   <div style="background-color:#99FFFF;!important" >
			<div style="width:10%; float:left"><a href="detail.jsp?id=0" target="content"> 推荐 </a></div>
 			<div style="width:10%; float:left"><a href="javascript:countClickedTimes1();" target="content" id="star"> 星级</a></div>	
  			<div style="width:10%; float:left"><a href="javascript:countClickedTimes2();" target="content" id="grade"> 评分 </a></div>
  			<div style="width:10%; float:left"><a href="javascript:countClickedTimes3();" target="content" id="price"> 价格 </a></div>
  			<div style="width:60%;"></div>
	</div>  
	
	</body>
</html>
