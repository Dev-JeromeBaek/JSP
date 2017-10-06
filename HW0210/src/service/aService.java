package service;

import java.sql.Connection;
import java.util.ArrayList;


import dao.aDAO;
import dto.PageDTO;
import dto.stuDTO;
import dto.teaDTO;
import modual.jdbcConnector;

public class aService {
	
	private Connection conn;
	private aDAO dao;
	
	public aService() {
	}
	
	public int joinOk(teaDTO dto) {
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.joinOk(conn, dto);
			if(res > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public teaDTO loginCheck(String logId, String logPw) {
		teaDTO dto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			dto = dao.loginCheck(conn, logId, logPw);
			if(dto != null) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return dto;
	}

	public int teaModOk(teaDTO dto) {
		
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.teaModOk(conn, dto);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}
	
	public int teaDel(int tnum) {
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.teaDel(conn, tnum);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public int saveStu(stuDTO sdto) {
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.saveStu(conn, sdto);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}
	
	public stuDTO insertStuGradePage(int snum) {
		stuDTO sdto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			sdto = dao.insertStuGradePage(conn, snum);
			if(sdto != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return sdto;
	}
	
	public ArrayList<stuDTO> stuGrade2(String sname) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.stuGrade2(conn, sname);
			if(listc != null) conn.commit();
			else conn.rollback();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}
	
	public stuDTO saveGrade1(int snum) {
		stuDTO sdto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			sdto = dao.saveGrade1(conn, snum);
			if(sdto != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return sdto;
	}
	
	public int saveGrade2(stuDTO sdto2) {
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.saveGrade2(conn, sdto2);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}
	
	public ArrayList<stuDTO> showStuList(PageDTO pdto) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.showStuList(conn, pdto);
			if(listc != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}
	
	public ArrayList<stuDTO> searchhak(int hak) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.searchhak(conn, hak);
			if(listc != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}
	
	public ArrayList<stuDTO> selhaknban(int hak, int ban) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.selhaknban(conn, hak, ban);
			if(listc != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}
	

	public stuDTO selectStuOne(int snum) {
		stuDTO sdto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			sdto = dao.selectStuOne(conn, snum);
			if(sdto != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return sdto;
	}
	
	public stuDTO cancelMod(int snum) {
		stuDTO sdto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			sdto = dao.cancelMod(conn, snum);
			if(sdto != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return sdto;
	}
	
	public stuDTO stuMod2(int snum) {
		stuDTO sdto = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			sdto = dao.stuMod2(conn, snum);
			if(sdto != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return sdto;
	}
	
	public int stuMod3(stuDTO sdto2) {
		
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.stuMod3(conn, sdto2);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}
	
	public int stuMod4(stuDTO sdto3) {
		
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			dao.stuMod4(conn, sdto3);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public int stuDel(int snum, int tnum, String tpw) {
		int res = 0;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			res = dao.stuDel(conn, snum, tnum, tpw);
			if(res != 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public ArrayList<stuDTO> stuSearch2(String sname) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.stuSearch2(conn, sname);
			if(listc != null) conn.commit();
			else conn.rollback();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}

	public ArrayList<stuDTO> thakntban(int thak, int tban) {
		ArrayList<stuDTO> listc = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc = dao.thakntban(conn, thak, tban);
			if(listc != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}

	public ArrayList<stuDTO> countmale(int thak, int tban) {
		ArrayList<stuDTO> listc2 = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc2 = dao.countmale(conn, thak, tban);
			if(listc2 != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc2;
	}

	public ArrayList<stuDTO> countfemale(int thak, int tban) {
		ArrayList<stuDTO> listc3 = null;
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new aDAO();
			listc3 = dao.countmale(conn, thak, tban);
			if(listc3 != null) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc3;
	}

}// Service END
