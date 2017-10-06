package dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.hpDTO;
import module.jdbcConnector;

public class hpDAO {

	private Connection conn;
	private PreparedStatement ppst;
	private ResultSet rs;
	
	public hpDAO() {
		// TODO Auto-generated constructor stub
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
	
//	[로그인]
	
	public String loginAdmin(String id, String pw) {
		String msg = null;
//		System.out.println("BB : " + id);
		try {
			String sql = "select * from hp_admin where id=? and pw=?";
			PreparedStatement ppst = conn.prepareStatement(sql);
			ppst.setString(1, id);
			ppst.setString(2, pw);
//			System.out.println("CC : " + id);
			rs = ppst.executeQuery();
			if(rs.next())
			{
//				System.out.println("DD : " + id);
				msg = id + "님 로그인 되었습니다.";
			} else {
//				System.out.println("EE : " + rs.getString("id"));
				msg = "아이디 또는 비밀번호가 일치하지 않습니다.";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return msg;
	}
	
//	[업로드]
	public int insertOne(hpDTO dto) {
		int res = 0;
		try {
			String sql = "insert into hp_furniture values(hp_furniture_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
			
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getName());
			ppst.setInt(2, dto.getPrice());
			ppst.setString(3, dto.getContOrigin());
			ppst.setString(4, dto.getOrgName());
			ppst.setString(5, dto.getSysName());
			ppst.setString(6, dto.getOpt());
			ppst.setString(7, dto.getMemo());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
	
//	[목록보기]
	public ArrayList<hpDTO> selectList() {
		ArrayList<hpDTO> listc = null;
		
		 try {
			String sql = "select * from hp_furniture order by num desc";
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				hpDTO dto = new hpDTO();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getInt("price"));
				dto.setContOrigin(rs.getString("contorigin"));
				dto.setOrgName(rs.getString("orgname"));
				dto.setSysName(rs.getString("sysname"));
				dto.setOpt(rs.getString("opt"));
				dto.setMemo(rs.getString("memo"));
				
				if(listc == null) listc = new ArrayList<>();
				listc.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return listc;
	}
	
//	[상세보기]
	public hpDTO selectOne(int num) {
		hpDTO dto = null;
		try {
			String sql = "select * from hp_furniture where num=?";
			
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new hpDTO();
				dto.setNum(num);
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getInt("price"));
				dto.setContOrigin(rs.getString("contorigin"));
				dto.setOrgName(rs.getString("orgname"));
				dto.setSysName(rs.getString("sysname"));
				dto.setOpt(rs.getString("opt"));
				dto.setMemo(rs.getString("memo"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		
		
		return dto;
	}
//	[수정하기]--1
	public hpDTO updateFurn1st(int num) {
		
		hpDTO dto = null;
		
		String sql = "select * from hp_furniture where num=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new hpDTO();
				dto.setNum(num);
				dto.setName(rs.getString("name"));
				dto.setPrice(rs.getInt("price"));
				dto.setContOrigin(rs.getString("contorigin"));
				dto.setOrgName(rs.getString("orgname"));
				dto.setSysName(rs.getString("sysname"));
				dto.setOpt(rs.getString("opt"));
				dto.setMemo(rs.getString("memo"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return dto;
	}
	
//	[수정하기]--2
//	public void updateFurn2nd(int num, String sysName) {
//		String sql = "";
//	}
	
//	[삭제하기]
	public int deleteFurn(int num) {
		int res = 0;
		
		String sql = "select sysName from hp_furniture where num=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			rs = ppst.executeQuery();
			if(rs.next())
			{
				String sysName = rs.getString("sysName");
				
				String upPath = new hpDTO().getUpPath();
				File myFile = new File(upPath + "/" + sysName);
				if(myFile.exists())
				{
					myFile.delete();
					System.out.println("서버에서 파일 삭제 완료");
				}
				sql = "delete from hp_furniture where num=?";
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, num);
				
				res = ppst.executeUpdate();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}// DAO END
