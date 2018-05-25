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