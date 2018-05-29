package com.internousdev.miamiburger3.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.miamiburger3.dto.UserInfoDTO;
import com.internousdev.miamiburger3.util.DBConnector;

public class LoginDAO {
	public UserInfoDTO login(String userId,String password) throws SQLException{
		UserInfoDTO dto=new UserInfoDTO();

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		String sql="select * from user_info where user_id=? and password=?";

		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, userId);//SQL文の「?」パラメータに、指定した値を挿入する。
			ps.setString(2, password);

			ResultSet rs=ps.executeQuery();// SQL文を実行する

			while(rs.next()) { //DBから取得した情報をDTOクラスに格納する
				dto.setUserId(rs.getString("user_id"));
				dto.setPassword(rs.getString("password"));
				dto.setFamilyName(rs.getString("family_name"));
				dto.setFirstName(rs.getString("first_name"));
				dto.setFamilyNameKana(rs.getString("family_name_kana"));
				dto.setFirstNameKana(rs.getString("first_name_kana"));
				dto.setSex(rs.getInt("sex"));
				dto.setEmail(rs.getString("email"));
				dto.setStatus(rs.getInt("status"));
				dto.setLogined("1");

				if(userId.equals("admin")) {
					dto.setMasterFlg(1);
				}else {
					dto.setMasterFlg(0);
				}

				dto.setSecretQuestion(rs.getString("secret_question"));
				dto.setSecretAnswer(rs.getString("secret_answer"));
				dto.setInsertDate(rs.getString("regist_date"));
				dto.setUpdateDate(rs.getString("update_date"));

			}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				con.close();
			}
			return dto;
		}
	public int cartUpdate(String userId, String tempUserId) throws SQLException{

		int count=0;
		DBConnector db=new DBConnector();
		Connection con=db.getConnection();
		String sql="UPDATE cart_info SET user_id = ? WHERE temp_user_id = ?";

		try {
			PreparedStatement ps=con.prepareStatement(sql);

			ps.setString(1,userId);
			ps.setString(2, tempUserId);

			count= ps.executeUpdate();

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
		}
		return count;
	}

}
