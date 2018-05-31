package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class UserCreateCompleteDAO {
	private DateUtil dateUtil=new DateUtil();
	private String sql="INSERT INTO login_user_transaction(login_id,login_pass,user_name,insert_date)VALUES(?,?,?,?)";

	public void cerateUser(String loginUserId,String loginUserPassword,String userName)throws SQLException{

		DBConnector dbConnector=new DBConnector();
		Connection connection=dbConnector.getConnection();

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, loginUserId);
			preparedStatement.setString(2, loginUserPassword);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}

	public String search(String loginUserId) throws SQLException{

		String a = "";
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		String sql="SELECT * FROM login_user_transaction WHERE login_id = ?";

	try {
		PreparedStatement ps =con.prepareStatement(sql);
		ps.setString(1, loginUserId);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			a = rs.getString("user_id");
		}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	return a;
	}
}
