package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.memDAO;
import dto.memDTO;
import modual.jdbcConnwctor;

public class memService {
	
	private Connection conn;
	private memDAO dao;
	
	public memService() {
		try {
			this.conn = jdbcConnwctor.getConnection();
			this.dao = new memDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public int insertInfo(memDTO dto) {
		int res = 0;
		try {
			res = dao.insertInfo(conn, dto);
			if(res > 0)
			{
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnwctor.closeConnection(conn);
		}
		return res;
	}

	public ArrayList<memDTO> showList() {
		ArrayList<memDTO> listc = null;
		try {
			listc = dao.showList(conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnwctor.closeConnection(conn);
		}
		return listc;
	}

}
