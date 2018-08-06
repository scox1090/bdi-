package com.bdi.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBTest {
	private static String driver = "org.mariadb.jdbc.Driver";
	private static String url = "jdbc:mariadb://localhost:3306/dbi";
	private static String id = "root";
	private static String pwd = "12345678";

	public List<Map<String,String>> getUserList() {
		
		Connection con = null;
		List<Map<String, String>> userList = new ArrayList<Map<String, String>>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			Statement stmt = con.createStatement();
			String sql = "select * from user_info";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Map<String, String> user = new HashMap<String, String>();
				user.put("uiNo", rs.getString("uiNo"));
				user.put("uiId", rs.getString("uiId"));
				user.put("uiPwd", rs.getString("uiPwd"));
				user.put("uiName", rs.getString("uiName"));
				/* getInt를 getString으로 바꾸어도 상관은 없다.(반대는 불가) */
				userList.add(user);

			}
		} catch (ClassNotFoundException e) { /* try catch는 시도후 오류를 대처하는 방법을 넣어 컴파일할 수 있다. */
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
	
	public static void main(String[] args) {
		DBTest dbt = new DBTest();
		List<Map<String,String>> userList = dbt.getUserList();
		for(Map<String,String> user : userList) {
			System.out.print("userNo : " + user.get("uiNo"));
			System.out.print(", userId : " + user.get("uiId"));
			System.out.print(", userName : " + user.get("uiName"));
		}
	}
}
