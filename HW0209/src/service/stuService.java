package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.stuDAO;
import dto.stuDTO;
import modual.jdbcConnector;

public class stuService {
	
	private Connection conn;
	private stuDAO dao;

	public stuService() {
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new stuDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertOne(stuDTO dto) {
		int res = 0;
		try {
			res = dao.insertOne(conn, dto);
			if(res > 0) conn.commit();
			else conn.rollback();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public ArrayList<stuDTO> selectListPage() {
		ArrayList<stuDTO> listc = null;
		try {
			listc = dao.selectListPage(conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return listc;
	}

	public stuDTO selectOne(int num) {
		stuDTO dto = null;
		try {
			System.out.println("Conn : " + conn.isClosed());
			dto = dao.selectOne(conn, num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return dto;
	}

	public stuDTO updatePage(int num) {
		stuDTO dto = null;
		try {
			dto = dao.selectOne(conn, num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int updateOne(stuDTO dto) {
		int res = 0;
		try {
			res = dao.updateOne(conn, dto);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		return res;
	}

	public int deleteOne(int num) {
		int res = 0;
		try {
			res = dao.deleteOne(conn, num);
			if(res > 0) conn.commit();
			else conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConn(conn);
		}
		
		return res;
	}

}
