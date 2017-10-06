package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.HamDTO;
import module.jdbcConnector;

public class HamDAO {
	
	private Connection conn;
	private PreparedStatement ppst;
	private ResultSet rs;
	private ArrayList<HamDTO> listc = null;
	private HamDTO dto = null;
	
	public HamDAO() {
		// TODO Auto-generated constructor stub
		try {
			conn = jdbcConnector.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// con END
	
//	[입력]
	public int insertOne(HamDTO dto) {
		
		int res = 0;
		
		try {
			String sql = "insert into hw_ham values(hw_ham_seq.nextval, ?, ?, ?, ?)";
			
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getNameHam());
			ppst.setString(2, dto.getBrandHam());
			ppst.setInt(3, dto.getPriceHam());
			ppst.setDouble(4, dto.getKcalHam());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
	 
//	[전체목록보기]
	public ArrayList<HamDTO> selectList(String sortHamList, String del) {
		
		try {
				
			String sql = "select * from hw_ham order by num desc";
			
//			if(sortHamList.equals("coHiSo")) {
//				sql = "select * from hw_ham order by priceHam desc";
//			} else if(sortHamList.equals("coLoSo")) {
//				sql = "select * from hw_ham order by priceHam";
//			} else if(sortHamList.equals("calHiSo")) {
//				sql = "select * from hw_ham order by kcalHam desc";
//			} else if(sortHamList.equals("calLoSo")) {
//				sql = "select * from hw_ham order by kcalHam";
//			} else {
//				sql = "select * from hw_ham order by num desc";
//			}
			System.out.println(sortHamList);
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new HamDTO();
				dto.setNum(rs.getInt("num"));
				dto.setNameHam(rs.getString("nameHam"));
				dto.setBrandHam(rs.getString("brandHam"));
				dto.setPriceHam(rs.getInt("priceHam"));
				dto.setKcalHam(rs.getDouble("kcalHam"));
				System.out.println(dto.getNum());
				System.out.println(dto.getNameHam());
				if(listc == null)
				{
					listc = new ArrayList<>();
				}
				listc.add(dto);
			}
			System.out.println(sortHamList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return listc;
	}
	
//	[상세보기]
	public HamDTO selectOne(int num) {
		
		try {
			
			String sql = "select * from hw_ham where num=?";
			
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, num);
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				dto = new HamDTO();
				dto.setNum(rs.getInt("num"));
				dto.setNameHam(rs.getString("nameHam"));
				dto.setBrandHam(rs.getString("brandHam"));
				dto.setPriceHam(rs.getInt("priceHam"));
				dto.setKcalHam(rs.getDouble("kcalHam"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return dto;
	}
	
//	[수정하기]
	public int updateOne(HamDTO dto) {
		int res = 0;
		try {
			
			String sql = "update hw_ham set nameHam=?, brandHam=?, priceHam=?, kcalHam=? where num=?";
			
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getNameHam());
			ppst.setString(2, dto.getBrandHam());
			ppst.setInt(3, dto.getPriceHam());
			ppst.setDouble(4, dto.getKcalHam());
			ppst.setInt(5, dto.getNum());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return res;
	}
	
//	[삭제하기]
	public String deleteList(String[] deleteHam) {
		String msg = null;
		
		try {
			for(String each : deleteHam)
			{
				int num = Integer.parseInt(each);
				String sql = "delete from hw_ham where num=?";
				
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, num);
				
				int res = ppst.executeUpdate();
				msg += res > 0 ? "삭제 완료" : "삭제 실패";
			}
			if(msg.contains("삭제 실패"))
			{
				msg = "삭제 실패";
			} else {
				msg = "삭제 완료";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return msg;
	}
	
//	[검색]
	public ArrayList<HamDTO> searchHam(String searchHam) {
		
		try {
			
			String sql = "select * from hw_ham";
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			System.out.println(searchHam);
			while(rs.next())
			{
				if(rs.getString("nameHam").equals(searchHam))
				{
					listc = new ArrayList();
					sql = "select * from hw_ham where nameHam=?";
					ppst = conn.prepareStatement(sql);
					ppst.setString(1, searchHam);
					rs = ppst.executeQuery();
					while(rs.next())
					{
						dto = new HamDTO();
						dto.setNum(rs.getInt("num"));
						dto.setNameHam(rs.getString("nameHam"));
						dto.setBrandHam(rs.getString("brandHam"));
						dto.setPriceHam(rs.getInt("priceHam"));
						dto.setKcalHam(rs.getDouble("kcalHam"));
						listc.add(dto);
					}
				} else if(rs.getString("brandHam").equals(searchHam)) {
					
					listc = new ArrayList();
					sql = "select * from hw_ham where brandHam=?";
					ppst = conn.prepareStatement(sql);
					ppst.setString(1, searchHam);
					rs = ppst.executeQuery();
					while(rs.next())
					{
						dto = new HamDTO();
						dto.setNum(rs.getInt("num"));
						dto.setNameHam(rs.getString("nameHam"));
						dto.setBrandHam(rs.getString("brandHam"));
						dto.setPriceHam(rs.getInt("priceHam"));
						dto.setKcalHam(rs.getDouble("kcalHam"));
						listc.add(dto);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return listc;
	}

	
	private void closeAll() {
		try {
			if(rs != null && !rs.isClosed()) rs.close();
			if(ppst != null && !ppst.isClosed()) ppst.close();
			if(conn != null && !conn.isClosed()) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// closeAll() END
	
}// class END
