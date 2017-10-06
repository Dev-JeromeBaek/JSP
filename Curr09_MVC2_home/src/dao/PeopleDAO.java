package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.PeopleDTO;
import module.jdbcConnector;

public class PeopleDAO {
	
	private PreparedStatement ppst;
	private ResultSet rs;
	
	public int insertOne(Connection conn, PeopleDTO dto) throws Exception{
		int res = 0;
		
		String sql = "insert into t_peo values(t_peo_seq.nextval, ?, ?)";
		
		ppst = conn.prepareStatement(sql);
		ppst.setString(1, dto.getName());
		ppst.setInt(2, dto.getAge());
		
		res = ppst.executeUpdate();
		
		jdbcConnector.closeAll(ppst, rs);
		return res;
	}

	public ArrayList<PeopleDTO> selectList(Connection conn) throws Exception {
		
		String sql = "select * from t_peo order by num desc";
		
		ppst = conn.prepareStatement(sql);
		rs = ppst.executeQuery();
		
		ArrayList<PeopleDTO> listc = null;
		while(rs.next())
		{
			PeopleDTO dto = new PeopleDTO();
			dto.setNum(rs.getInt("num"));
			dto.setName(rs.getString("name"));
			dto.setAge(rs.getInt("age"));
			if(listc == null) listc = new ArrayList<>();
			listc.add(dto);
		}
		jdbcConnector.closeAll(ppst, rs);
		return listc;
	}

	public PeopleDTO selectOne(Connection conn, int num) {
		
		PeopleDTO dto = null;
		String sql = "select * from t_peo where num=?";
		try {
			
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			rs = ppst.executeQuery();
			
			if(rs.next())
			{
				dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeAll(ppst, rs);
		}
		return dto;
	}

}
