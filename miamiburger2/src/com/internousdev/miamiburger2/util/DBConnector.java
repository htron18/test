package com.internousdev.miamiburger2.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/miamiburgerdb";
	private static String user = "root";
	private static String password = "mysql";
	public Connection getConnection() {
		Connection con = null;

		try {
			Class.forName(driverName);
			//接続情報から自分のパソコンにインストールされているMySQLへ接続する準備が整います。
			con = (Connection) DriverManager.getConnection(url,user,password);
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return con;
	}
}
