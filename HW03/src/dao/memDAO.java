package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.memDTO;
import modual.jdbcConnwctor;

public class memDAO {
	
	private PreparedStatement ppst;
	private ResultSet rs;

	public int insertInfo(Connection conn, memDTO dto) {
		
		int res = 0;
		String sql = "insert into a_mem values(a_mem_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate)";
		
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getId());
			ppst.setString(2, dto.getPw());
			ppst.setString(3, dto.getName());
			ppst.setInt(4, dto.getAge());
			ppst.setString(5, dto.getBirth());
			ppst.setString(6, dto.getEmail());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnwctor.closeOthers(ppst, rs);
		}
		return res;
	}
	
	public ArrayList<memDTO> showList(Connection conn) {
		
		ArrayList<memDTO> listc = null;
		String sql = "select * from a_mem order by num desc";
		try {
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				memDTO dto = new memDTO();
				dto.setNum(rs.getInt("num"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				dto.setBirth(rs.getString("birth"));
				dto.setEmail(rs.getString("email"));
				dto.setNalja(rs.getDate("nalja"));
				
				if(listc == null) listc = new ArrayList<>();
				listc.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnwctor.closeOthers(ppst, rs);
		}
		return listc;
	}

}// DAO END
