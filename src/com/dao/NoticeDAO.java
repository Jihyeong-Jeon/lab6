package com.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NoticeDAO {

	private String driver;
	private String url;
	private String user;
	private String pass;
	
	private Connection conn = null;
	
	public NoticeDAO() {
		driver 	= "oracle.jdbc.driver.OracleDriver"; //com.mysql.jdbc.Driver
		url 	= "jdbc:oracle:thin:@claros.cs.purdue.edu:1524:strep";
		user 	= "jeon71";
		pass 	= "nDPnbsy6";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pass);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public ArrayList<NoticeEntity> selectAll() {
		ArrayList<NoticeEntity> notices = new ArrayList<>();
		
		String sql = 
				"SELECT * from TB_NOTICE";
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				NoticeEntity notice = new NoticeEntity();
				notice.setNo(rs.getInt("NO"));
				notice.setTitle(rs.getString("TITLE"));
				notice.setContent(rs.getString("CONTENT"));
				notice.setWriteDate(rs.getDate("WRITE_DATE"));
				notice.setId(rs.getString("ID"));
				notice.setHit(rs.getInt("HIT"));
				notices.add(notice);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			Utils.close(rs);
			Utils.close(stmt);
			Utils.close(conn);
		}
		
		return notices;
	}
}

