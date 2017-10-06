package service;

import java.sql.Connection;
import java.util.ArrayList;

import dao.PeopleDAO;
import dto.PeopleDTO;
import module.jdbcConnector;

public class PeopleService {
	
	private Connection conn;
	private PeopleDAO dao;
	
	public PeopleService() {
		try {
			this.conn = jdbcConnector.getConnection();
			this.dao = new PeopleDAO();
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	public int insertOne(PeopleDTO dto) {
		
		int res = 0;
		
		try {
			res = dao.insertOne(conn, dto);
			if(res > 0) conn.commit();
			else conn.rollback();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConnection(conn);
		}
		return res;
	}

	public ArrayList<PeopleDTO> selectList() {
		ArrayList<PeopleDTO> listc = null;
		try {
			listc = dao.selectList(conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcConnector.closeConnection(conn);
		}
		return listc;
	}

	// try catch dao에서 함!!!
	public PeopleDTO selectOne(int num) {
		
		PeopleDTO dto = dao.selectOne(conn, num);
		jdbcConnector.closeConnection(conn);
		return dto;
	}

}
