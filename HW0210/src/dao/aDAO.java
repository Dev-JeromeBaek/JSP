package dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.PageDTO;
import dto.stuDTO;
import dto.teaDTO;
import modual.jdbcConnector;

public class aDAO {

	private PreparedStatement ppst;
	private ResultSet rs;
	
	public int joinOk(Connection conn, teaDTO dto) {
		int res = 0;
		
		String sql = "select * from a_teacher";
		try {
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				if(dto.getTid().equals(rs.getString("tid"))) 
				{
					res = -1;
					break;
				} else {
		sql = "insert into a_teacher values"
				+"(a_teacher_seq.nextval, ?, ?, ?, ?, ?)";
					
					ppst = conn.prepareStatement(sql);
					ppst.setString(1, dto.getTname());
					ppst.setString(2, dto.getTid());
					ppst.setString(3, dto.getTpw());
					ppst.setInt(4, dto.getThak());
					ppst.setInt(5, dto.getTban());
					
					res = ppst.executeUpdate();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}

	public teaDTO loginCheck(Connection conn, 
			String logId, String logPw) {
		teaDTO dto = null;
		String sql = "select * from a_teacher where tid=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, logId);
			rs = ppst.executeQuery();
			
			while(rs.next())
			{
				if(rs.getString("tid").equals(logId))
				{
					if(rs.getString("tpw").equals(logPw)) {
						dto = new teaDTO();
						dto.setTnum(rs.getInt("tnum"));
						dto.setTid(rs.getString("tid"));
						dto.setTpw(rs.getString("tpw"));
						dto.setTname(rs.getString("tname"));
						dto.setThak(rs.getInt("thak"));
						dto.setTban(rs.getInt("tban"));
						break;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return dto;
	}

	public int teaModOk(Connection conn, teaDTO dto) {
		int res = 0;
		String sql = "update a_teacher set tid=?, "
		+"tpw=?, tname=?, thak=?, tban=? where tnum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, dto.getTid());
			ppst.setString(2, dto.getTpw());
			ppst.setString(3, dto.getTname());
			ppst.setInt(4, dto.getThak());
			ppst.setInt(5, dto.getTban());
			ppst.setInt(6, dto.getTnum());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	
	public int teaDel(Connection conn, int tnum) {
		int res = 0;
		String sql = "delete from a_teacher where tnum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, tnum);
			res = ppst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	

	public int saveStu(Connection conn, stuDTO sdto) {
		int res = 0;
		String sql = 
				"insert into a_student"
				+ "(snum, sname, sgender,"
				+ " shak, sban, sbirth, orgname,"
				+ " sysname)"
				+ " values(a_student_seq.nextval,"
				+ " ?, ?, ?, ?, ?, ?, ?)";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, sdto.getSname());
			ppst.setString(2, sdto.getSgender());
			ppst.setInt(3, sdto.getShak());
			ppst.setInt(4, sdto.getSban());
			ppst.setString(5, sdto.getSbirth());
			ppst.setString(6, sdto.getOrgName());
			ppst.setString(7, sdto.getSysName());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	
	public stuDTO insertStuGradePage(Connection conn, int snum) {
		stuDTO sdto = null;
		String sql = "select * from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, snum);
			rs = ppst.executeQuery();
			if(rs.next())
			{
				sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return sdto;
	}
	
	
	public ArrayList<stuDTO> stuGrade2(Connection conn, String sname) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_student where sname=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, sname);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}
	
	public stuDTO saveGrade1(Connection conn, int snum) {
		stuDTO sdto = null;
		String sql = "select * from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, snum);
			
			rs = ppst.executeQuery();
			if(rs.next())
			{
				sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return sdto;
	}
	
	public int saveGrade2(Connection conn, stuDTO sdto2) {
		int res = 0;
		String sql = "update a_student set kor=?, "
		+"eng=?, math=?, total=?, avg=? where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, sdto2.getKor());
			ppst.setInt(2, sdto2.getEng());
			ppst.setInt(3, sdto2.getMath());
			ppst.setInt(4, sdto2.getTotal());
			ppst.setDouble(5, sdto2.getAvg());
			ppst.setInt(6, sdto2.getSnum());
			
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	
	public ArrayList<stuDTO> showStuList(Connection conn, PageDTO pdto) {	
		ArrayList<stuDTO> listc = null;
//		String sql = "select * from a_student order by snum desc";
//		String sql = "select * from (select rownum rnum, a_student.* from a_student) where rnum>=? and rnum<=?";
//		select * from (select rownum rnum, a_student.* from a_student) where rnum>=1 and rnum<=10;
//		select count(*) from a_student;
//		select * from (select rownum rnum, a_student.* from a_student order by snum desc) where rnum>=1 and rnum<=10;
//		select * from (select a_student.* from a_student order by snum desc) where rnum>=1 and rnum<=10;
//		select a_student.* from a_student order by snum desc;
		String sql = "select count(*) from a_student";
		try {
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			rs.next();
			int cntAllRecord = rs.getInt(1);
			pdto.aCountRecord(cntAllRecord);
			
			sql = "select * from ("
					+ "select rownum rnum, a_student.* "
					+ "from a_student order by snum desc) "
					+ "where rnum>=? and rnum<=?";
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, pdto.getStartNum());
			ppst.setInt(2, pdto.getEndNum());
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			} 
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}
	
	public ArrayList<stuDTO> searchhak(Connection conn, int hak) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_student where shak=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, hak);
			rs = ppst.executeQuery();
			
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}
	
	public ArrayList<stuDTO> selhaknban(Connection conn, 
			int hak, int ban) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_student "
		+"where shak=? and sban=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, hak);
			ppst.setInt(2, ban);
			
			rs = ppst.executeQuery();
			
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}

	public stuDTO selectStuOne(Connection conn, int snum) {
		stuDTO sdto = null;
		String sql = "select * from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, snum);
			rs = ppst.executeQuery();
			
			if(rs.next())
			{
				sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return sdto;
	}
	
	public stuDTO cancelMod(Connection conn, int snum) {
		stuDTO sdto = null;
		String sql = "select * from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, snum);
			rs = ppst.executeQuery();
			
			if(rs.next())
			{
				sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return sdto;
	}
	
	public stuDTO stuMod2(Connection conn, int snum) {
		stuDTO sdto = null;
		String sql = "select * from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, snum);
			
			rs = ppst.executeQuery();
			if(rs.next())
			{
				sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return sdto;
	}
	
	public int stuMod3(Connection conn, stuDTO sdto2) {
		int res = 0;
		String sql = "update a_student set sbirth=?, "
		+"kor=?, eng=?, math=?, total=?, avg=? where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, sdto2.getSbirth());
			ppst.setInt(2, sdto2.getKor());
			ppst.setInt(3, sdto2.getEng());
			ppst.setInt(4, sdto2.getMath());
			ppst.setInt(5, sdto2.getTotal());
			ppst.setDouble(6, sdto2.getAvg());
			ppst.setInt(7, sdto2.getSnum());
			res = ppst.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	
	public int stuMod4(Connection conn, stuDTO sdto3) {
		int res = 0;
		String sql = "select sysname from a_student where snum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, sdto3.getSnum());
			
			rs = ppst.executeQuery();
			if(rs.next())
			{
				String sysname = rs.getString("sysname");
				String upPath = "C:/Users/Yeob's/Desktop/eclipse/JSP_Works/HW0210/WebContent/stuPic";
				File aFile = new File(upPath + "/" + sysname);
				if(aFile.exists())
				{
					aFile.delete();
					System.out.println("서버에서 파일 삭제 완료");
					res = 1;
				} else {
					System.out.println("서버에서 파일 삭제 실패");
					res = -1;
				}
				sql = "update a_student set sbirth=?, "
				+"kor=?, eng=?, math=?, total=?, avg=?, "
						+"orgname=?, sysname=? where snum=?";
				
				ppst = conn.prepareStatement(sql);
				ppst.setString(1, sdto3.getSbirth());
				ppst.setInt(2, sdto3.getKor());
				ppst.setInt(3, sdto3.getEng());
				ppst.setInt(4, sdto3.getMath());
				ppst.setInt(5, sdto3.getTotal());
				ppst.setDouble(6, sdto3.getAvg());
				ppst.setString(7, sdto3.getOrgName());
				ppst.setString(8, sdto3.getSysName());
				ppst.setInt(9, sdto3.getSnum());
				
				res = ppst.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}
	

	public int stuDel(Connection conn, 
			int snum, int tnum, String tpw) {
		int res = 0;
		String sql = "select * from a_teacher where tnum=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, tnum);
			rs = ppst.executeQuery();
			if(rs.next()) 
			{
				if(tpw.equals(rs.getString("tpw"))) {
					sql = "delete from a_student where snum=?";
					ppst = conn.prepareStatement(sql);
					ppst.setInt(1, snum);
					res = ppst.executeUpdate();
				} else {
					res = -1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return res;
	}

	public ArrayList<stuDTO> stuSearch2(Connection conn, 
			String sname) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_student where sname=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, sname);
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc;
	}
	public ArrayList<stuDTO> thakntban(Connection conn, 
			int thak, int tban) {
		ArrayList<stuDTO> listc = null;
		String sql = "select * from a_student where "
		+"shak=? and sban=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, thak);
			ppst.setInt(2, tban);
			
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc == null) listc = new ArrayList<>();
				listc.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}

	public ArrayList<stuDTO> countmale(Connection conn, 
			int thak, int tban) {
		ArrayList<stuDTO> listc2 = null;
		String sql = "select * from a_student where "
		+"shak=? and sban=? and sgender=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, thak);
			ppst.setInt(2, tban);
			ppst.setString(3, "남자");
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc2 == null) listc2 = new ArrayList<>();
				listc2.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc2;
	}

	public ArrayList<stuDTO> countfemale(Connection conn, 
			int thak, int tban) {
		ArrayList<stuDTO> listc3 = null;
		String sql = "select count(*) from a_student "
		+"where shak=? and sban=? and sgender=?";
		try {
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, thak);
			ppst.setInt(2, tban);
			ppst.setString(3, "여자");
			rs = ppst.executeQuery();
			while(rs.next())
			{
				stuDTO sdto = new stuDTO();
				sdto.setSnum(rs.getInt("snum"));
				sdto.setSname(rs.getString("sname"));
				sdto.setSgender(rs.getString("sgender"));
				sdto.setShak(rs.getInt("shak"));
				sdto.setSban(rs.getInt("sban"));
				sdto.setSbirth(rs.getString("sbirth"));
				sdto.setOrgName(rs.getString("orgname"));
				sdto.setSysName(rs.getString("sysname"));
				sdto.setKor(rs.getInt("kor"));
				sdto.setEng(rs.getInt("eng"));
				sdto.setMath(rs.getInt("math"));
				sdto.setTotal(rs.getInt("total"));
				sdto.setAvg(rs.getDouble("avg"));
				if(listc3 == null) listc3 = new ArrayList<>();
				listc3.add(sdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeOthers(ppst, rs);
		}
		return listc3;
	}

	
}// DAO END
