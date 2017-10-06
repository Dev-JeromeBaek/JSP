package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.PeopleDTO;
import module.jdbcConnector;

public class PeopleDAO {
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertOne(Connection conn, PeopleDTO dto) throws Exception {
		
		String sql = "insert into t_peo values(t_peo_seq.nextval, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getName());
		pstmt.setInt(2, dto.getAge());
		int res = pstmt.executeUpdate();
		jdbcConnector.closeAll(pstmt, rs);
		return res;
	}

	public ArrayList<PeopleDTO> selectList(Connection conn) throws Exception {
		
		ArrayList<PeopleDTO> listc = null;
		String sql = "select * from t_peo order by num desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next())
		{
			PeopleDTO dto = new PeopleDTO();
			dto.setNum(rs.getInt("num"));
			dto.setName(rs.getString("name"));
			dto.setAge(rs.getInt("age"));
			if(listc == null) listc = new ArrayList<>();
			listc.add(dto);
		}
		jdbcConnector.closeAll(pstmt, rs);
		return listc;
	}
	
}
