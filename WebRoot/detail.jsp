<%@page import="dao.HotelDAO"%>
<%@page import="bean.Hotel"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8" import="java.util.*"%>
<html>
	<head>
		<title>显示所有酒店的页面</title>
	</head>
	<body>
		<center>
			<% String aa = request.getParameter("id");
			int a= Integer.parseInt(aa);
			%>
			<%!int row;%>
			<%
				request.setCharacterEncoding("UTF-8");
				row = 1;
				HotelDAO hotelDAO = new HotelDAO();
				List<Hotel> list= null;
				if(a==1){
					list = hotelDAO.findAll_stardesc();
				}else if(a==2){
					list = hotelDAO.findAll_starup();
				}else if(a==3){
					list = hotelDAO.findAll_gradedesc();
				}else if(a==4){
					list = hotelDAO.findAll_gradeup();
				}else if(a==5){
					list = hotelDAO.findAll_pricedesc();
				}else if(a==6){
					list = hotelDAO.findAll_priceup();
				}else if(a==7){
					list = hotelDAO.findAll_timerange();
				}else{ 
					list = hotelDAO.findAll();
				}
				Iterator<Hotel> iter = list.iterator();
			%>
			
			<div align="left">共有 <font size="3" color="red"><%=list.size()%></font>条记录</div>
			<%
				while (iter.hasNext()) {
				Hotel hotel = iter.next();
				String url=hotel.getUrl();
			%>
			<table frame=void border="1" cellspacing="0" cellpadding="0" width="100%" >
				<tr>
					<td>
						<img alt="" src="image/pic.png">
					</td>
					<td width="70%">
						<div>
							<span>
							&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="<%=url%>" target="_blank"><%=hotel.getName()%></a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<em style="color: green"><%=hotel.getStar()%> 星级</em>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<em style="color: pink">网络评分：<%=hotel.getGrade()%>分</em>
								
							</span>
						</div>
						<p>
							&nbsp;&nbsp;<span><%=hotel.getJianjie()%></span>
						</p>
					</td>
					<td width="15%">
						<div>
							
							&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=url%>" target="_blank"><%=hotel.getMinprice()%>元起></a>
						</div>
					</td>
				</tr><hr>
			</table>
			<%
				++row;
				}
			%>
		</center>
	</body>
</html>