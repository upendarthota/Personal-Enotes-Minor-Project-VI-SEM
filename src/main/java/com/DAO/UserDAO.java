package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(UserDetails us) {
		boolean success = false;
		try {
			String query = "insert into user(fullname, email, password) values(?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());

			// Executing the query
			int rowsAffected = ps.executeUpdate();

			// Checking if the user was added successfully
			success = rowsAffected == 1;
		} catch (Exception e) {
			// Handle exceptions more gracefully (log, throw custom exception, etc.)
			e.printStackTrace();
		}
		return success;
	}

	public UserDetails loginuser(UserDetails us) {
		UserDetails user = null;
		try {
			String query = "select * from user where email=? and password=?";

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, us.getEmail());
			ps.setString(2, us.getPassword());
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new UserDetails();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("fullname"));
				user.setEmail(rs.getString("email"));
				user.setPassword("password");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
}

//	public UserDetails checkemail(UserDetails us) {
//
//		return us;
//
//	}

	
	
//	public UserDetails change(UserDetails us) {
//		UserDetails user = null;
//		try {
//			String query = "update user set password=? where email=?";
//
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, us.getEmail());
//			ps.setString(2, us.getPassword());
//			ResultSet rs = ps.executeUpdate();
//			
//			
//			
//
//			if(rs.next()) {
//				user = new UserDetails();
//				user.setId(rs.getInt("id"));
//				user.setName(rs.getString("fullname")));
//				user.setEmail(rs.getString("email"));
//				user.setPassword("password");
//
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return user;
//
//	}
//
//}
