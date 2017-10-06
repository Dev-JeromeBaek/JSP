package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.PeopleDTO;
import module.jdbcConnector;

//	DAO : Data Access Object

public class peopleDAO {
	
	private Connection conn;
	private PreparedStatement ppst;
	private ResultSet rs;
	
	public peopleDAO() {
		try {
			conn = jdbcConnector.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}// con END
	
	private void closeAll() {
		try {
			if(rs != null && !rs.isClosed()) rs.close();
			if(ppst != null && !ppst.isClosed()) ppst.close();
			if(conn != null && !conn.isClosed()) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//	1. 인사 정보 저장
	public int insertOne(PeopleDTO dto) {
		int res = 0;	// 저장 후에 결과값이 int 형으로 반환되기때문에 int 형으로 return하는게 좋다(정답은 아님)
		
		try {
			
			String sql = "insert into t_peo values(t_peo_seq.nextval, ?, ?)";
			
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getName());
			ppst.setInt(2, dto.getAge());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		
		return res;
	}
	
//	2. 인사 정보 목록 보기
	public ArrayList<PeopleDTO> selectList() {
		ArrayList<PeopleDTO> listc = null;
		try {
			String sql = "select * from t_peo order by num desc";
			
			ppst = conn.prepareStatement(sql);
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				PeopleDTO dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
				
				if(listc == null) {
					listc = new ArrayList<>();
				}
				listc.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return listc;
	}
	
//	3. 인사 정보 상세 보기
	public PeopleDTO selectOne(int num) {
		PeopleDTO dto = null;
		try {
			String sql = "select * from t_peo where num=?";
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new PeopleDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return dto;
	}
//	4. 인사 정보 수정 하기
	public int modifyOne(PeopleDTO dto) {
		int res = 0;
		
		try {
			String sql = "update t_peo set name=?, age=? where num=?";
			
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getName());
			ppst.setInt(2, dto.getAge());
			ppst.setInt(3, dto.getNum());
			
			res = ppst.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
//	5. 인사 정보 삭제 하기
	public int deleteOne(int num) {
		int res = 0;
		
		try {
			String sql = "delete from t_peo where num=?";
			
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
}// class END
