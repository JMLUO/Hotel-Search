package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.Hotel;
import db.DbConnect;

public class HotelDAO {
	protected static final String FIELDS_INSERT = "name,star,grade,minprice,maxprice,room,jianjie,url";
	
	//查询所有
	public List<Hotel> findAll() throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		List<Hotel> hotel = new ArrayList<Hotel>();
		con = DbConnect.getDBconnection();
		prepStmt = con.prepareStatement("select * from hotel");
		rs = prepStmt.executeQuery();
		while (rs.next()) {
			Hotel hotel2 = new Hotel();	
			hotel2.setName(rs.getString(1));	
			hotel2.setStar(rs.getInt(2));
			hotel2.setGrade(rs.getFloat(3));
			hotel2.setMinprice(rs.getFloat(4));
			hotel2.setMaxprice(rs.getFloat(5));		
			hotel2.setRoom(rs.getInt(6));
			hotel2.setJianjie(rs.getString(7));
			hotel2.setUrl(rs.getString(8));
			hotel.add(hotel2);
		}
		DbConnect.closeDB(con, prepStmt, rs);
		return hotel;
	}
	//星级down
	public List<Hotel> findAll_stardesc() throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		List<Hotel> hotel = new ArrayList<Hotel>();
		con = DbConnect.getDBconnection();
		prepStmt = con.prepareStatement("select * from hotel order by star desc");
		rs = prepStmt.executeQuery();
		while (rs.next()) {
			Hotel hotel2 = new Hotel();	
			hotel2.setName(rs.getString(1));	
			hotel2.setStar(rs.getInt(2));
			hotel2.setGrade(rs.getFloat(3));
			hotel2.setMinprice(rs.getFloat(4));
			hotel2.setMaxprice(rs.getFloat(5));		
			hotel2.setRoom(rs.getInt(6));
			hotel2.setJianjie(rs.getString(7));
			hotel2.setUrl(rs.getString(8));
			hotel.add(hotel2);
		}
		DbConnect.closeDB(con, prepStmt, rs);
		return hotel;
	}
	//评分down
		public List<Hotel> findAll_gradedesc() throws Exception {
			Connection con = null;
			PreparedStatement prepStmt = null;
			ResultSet rs = null;
			List<Hotel> hotel = new ArrayList<Hotel>();
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement("select * from hotel order by grade desc");
			rs = prepStmt.executeQuery();
			while (rs.next()) {
				Hotel hotel2 = new Hotel();	
				hotel2.setName(rs.getString(1));	
				hotel2.setStar(rs.getInt(2));
				hotel2.setGrade(rs.getFloat(3));
				hotel2.setMinprice(rs.getFloat(4));
				hotel2.setMaxprice(rs.getFloat(5));		
				hotel2.setRoom(rs.getInt(6));
				hotel2.setJianjie(rs.getString(7));
				hotel2.setUrl(rs.getString(8));
				hotel.add(hotel2);
			}
			DbConnect.closeDB(con, prepStmt, rs);
			return hotel;
		}
		//价格down
		public List<Hotel> findAll_pricedesc() throws Exception {
			Connection con = null;
			PreparedStatement prepStmt = null;
			ResultSet rs = null;
			List<Hotel> hotel = new ArrayList<Hotel>();
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement("select * from hotel order by minprice desc");
			rs = prepStmt.executeQuery();
			while (rs.next()) {
				Hotel hotel2 = new Hotel();	
				hotel2.setName(rs.getString(1));	
				hotel2.setStar(rs.getInt(2));
				hotel2.setGrade(rs.getFloat(3));
				hotel2.setMinprice(rs.getFloat(4));
				hotel2.setMaxprice(rs.getFloat(5));		
				hotel2.setRoom(rs.getInt(6));
				hotel2.setJianjie(rs.getString(7));
				hotel2.setUrl(rs.getString(8));
				hotel.add(hotel2);
			}
			DbConnect.closeDB(con, prepStmt, rs);
			return hotel;
		}
		//时间范围-选出房间数不为0的酒店
				public List<Hotel> findAll_timerange() throws Exception {
					Connection con = null;
					PreparedStatement prepStmt = null;
					ResultSet rs = null;
					List<Hotel> hotel = new ArrayList<Hotel>();
					con = DbConnect.getDBconnection();
					prepStmt = con.prepareStatement("select * from hotel where room != 0");
					rs = prepStmt.executeQuery();
					while (rs.next()) {
						Hotel hotel2 = new Hotel();	
						hotel2.setName(rs.getString(1));	
						hotel2.setStar(rs.getInt(2));
						hotel2.setGrade(rs.getFloat(3));
						hotel2.setMinprice(rs.getFloat(4));
						hotel2.setMaxprice(rs.getFloat(5));		
						hotel2.setRoom(rs.getInt(6));
						hotel2.setJianjie(rs.getString(7));
						hotel2.setUrl(rs.getString(8));
						hotel.add(hotel2);
					}
					DbConnect.closeDB(con, prepStmt, rs);
					return hotel;
				}
				//星级up
				public List<Hotel> findAll_starup() throws Exception {
					Connection con = null;
					PreparedStatement prepStmt = null;
					ResultSet rs = null;
					List<Hotel> hotel = new ArrayList<Hotel>();
					con = DbConnect.getDBconnection();
					prepStmt = con.prepareStatement("select * from hotel order by star");
					rs = prepStmt.executeQuery();
					while (rs.next()) {
						Hotel hotel2 = new Hotel();	
						hotel2.setName(rs.getString(1));	
						hotel2.setStar(rs.getInt(2));
						hotel2.setGrade(rs.getFloat(3));
						hotel2.setMinprice(rs.getFloat(4));
						hotel2.setMaxprice(rs.getFloat(5));		
						hotel2.setRoom(rs.getInt(6));
						hotel2.setJianjie(rs.getString(7));
						hotel2.setUrl(rs.getString(8));
						hotel.add(hotel2);
					}
					DbConnect.closeDB(con, prepStmt, rs);
					return hotel;
				}
				//评分up
				public List<Hotel> findAll_gradeup() throws Exception {
					Connection con = null;
					PreparedStatement prepStmt = null;
					ResultSet rs = null;
					List<Hotel> hotel = new ArrayList<Hotel>();
					con = DbConnect.getDBconnection();
					prepStmt = con.prepareStatement("select * from hotel order by grade");
					rs = prepStmt.executeQuery();
					while (rs.next()) {
						Hotel hotel2 = new Hotel();	
						hotel2.setName(rs.getString(1));	
						hotel2.setStar(rs.getInt(2));
						hotel2.setGrade(rs.getFloat(3));
						hotel2.setMinprice(rs.getFloat(4));
						hotel2.setMaxprice(rs.getFloat(5));		
						hotel2.setRoom(rs.getInt(6));
						hotel2.setJianjie(rs.getString(7));
						hotel2.setUrl(rs.getString(8));
						hotel.add(hotel2);
					}
					DbConnect.closeDB(con, prepStmt, rs);
					return hotel;
				}
					//价格up
					public List<Hotel> findAll_priceup() throws Exception {
						Connection con = null;
						PreparedStatement prepStmt = null;
						ResultSet rs = null;
						List<Hotel> hotel = new ArrayList<Hotel>();
						con = DbConnect.getDBconnection();
						prepStmt = con.prepareStatement("select * from hotel order by minprice");
						rs = prepStmt.executeQuery();
						while (rs.next()) {
							Hotel hotel2 = new Hotel();	
							hotel2.setName(rs.getString(1));	
							hotel2.setStar(rs.getInt(2));
							hotel2.setGrade(rs.getFloat(3));
							hotel2.setMinprice(rs.getFloat(4));
							hotel2.setMaxprice(rs.getFloat(5));		
							hotel2.setRoom(rs.getInt(6));
							hotel2.setJianjie(rs.getString(7));
							hotel2.setUrl(rs.getString(8));
							hotel.add(hotel2);
						}
						DbConnect.closeDB(con, prepStmt, rs);
						return hotel;
					}
}
