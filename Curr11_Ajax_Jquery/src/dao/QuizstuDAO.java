package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TreeMap;

import modual.jdbcConnector;

public class QuizstuDAO {
	
	private Connection conn;
	private PreparedStatement ppst;
	private ResultSet rs;

	public ArrayList<String> searchStu(String searchParams) {
		
		ArrayList<String> listc = null;
		String sql = "select name from t_stu where name like ?";
		try {
			this.conn = jdbcConnector.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, "%"+searchParams+"%");
			
			rs = ppst.executeQuery();
			listc = new ArrayList<>();
			while(rs.next())
			{
				listc.add(rs.getString("name"));
			}
			for(String each : listc){
				System.out.println(each);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}

	public TreeMap<String, Object> showInfo(String ppp) {
		TreeMap<String, Object> mapc = null;
		String sql = "select * from t_stu where name=?";
		try {
			this.conn = jdbcConnector.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, ppp);
			rs = ppst.executeQuery();
			mapc = new TreeMap<>();
			while(rs.next()) {
				mapc.put("num", rs.getInt("num"));
				mapc.put("name", rs.getString("name"));
				mapc.put("kor", rs.getInt("kor"));
				mapc.put("eng", rs.getInt("eng"));
				mapc.put("math", rs.getInt("math"));
				mapc.put("total", rs.getInt("total"));
				mapc.put("avg", rs.getDouble("avg"));
				mapc.put("savedate", rs.getDate("savedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
			jdbcConnector.closeConn(conn);
		}
		return mapc;
	}
	
	
	
	
}// DAO END
