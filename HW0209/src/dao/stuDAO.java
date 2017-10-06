package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.stuDTO;
import modual.jdbcConnector;

public class stuDAO {
	
	private PreparedStatement ppst;
	private ResultSet rs;

	public int insertOne(Connection conn, stuDTO dto) {
		int res = 0;
		String sql = "insert into a_stu values(a_stu_seq.nextval, ?, ?, ?, ?, ?, ?)";
		
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getName());
			ppst.setInt(2, dto.getKor());
			ppst.setInt(3, dto.getEng());
			ppst.setInt(4, dto.getMath());
			ppst.setInt(5, dto.getTotal());
			ppst.setDouble(6, dto.getAvg());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}

	public ArrayList<stuDTO> selectListPage(Connection conn) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_stu order by num desc";
		try {
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			
			while(rs.next()) {
				stuDTO dto = new stuDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMath(rs.getInt("math"));
				dto.setTotal(rs.getInt("total"));
				dto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}

	public stuDTO selectOne(Connection conn, int num) {
		stuDTO dto = null;
		String sql = "select * from a_stu where num=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			rs = ppst.executeQuery();
			
			if(rs.next())
			{
				dto = new stuDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMath(rs.getInt("math"));
				dto.setTotal(rs.getInt("total"));
				dto.setAvg(rs.getDouble("avg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return dto;
	}

	public int updateOne(Connection conn, stuDTO dto) {
		int res = 0;
		String sql = 
			"update a_stu set name=?, kor=?, eng=?, math=?, total=?, avg=? where num=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getName());
			ppst.setInt(2, dto.getKor());
			ppst.setInt(3, dto.getEng());
			ppst.setInt(4, dto.getMath());
			ppst.setInt(5, dto.getTotal());
			ppst.setDouble(6, dto.getAvg());
			ppst.setInt(7, dto.getNum());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		
		return res;
	}

	public int deleteOne(Connection conn, int num) {
		int res = 0;
		String sql = "delete from a_stu where num=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}


}
