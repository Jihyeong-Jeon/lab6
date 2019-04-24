package com.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDAO {

	private String driver;
	private String url;
	private String user;
	private String pass;
	
	private Connection conn = null;
	
	public UserDAO() {
		driver 	= "oracle.jdbc.driver.OracleDriver";
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
	
	public ArrayList<UserEntity> selectAll() {
		ArrayList<UserEntity> users = new ArrayList<>();
		
		String sql = "SELECT * from TB_Users order by SCORE desc";
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				UserEntity user = new UserEntity();
				user.setName(rs.getString("NAME"));
				user.setScore(rs.getInt("SCORE"));
				users.add(user);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			Utils.close(rs);
			Utils.close(stmt);
			Utils.close(conn);
		}
		
		return users;
	}
	
	public void insert(String name, int score) {
		String sql_record = "insert into TB_Users values(\'" + name + "\', " + score + ")";
        Statement stmt = null;
		
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(sql_record);		
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			Utils.close(stmt);
			Utils.close(conn);
		}
		
	}
}

