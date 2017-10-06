package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dto.PeopleDTO;
import service.PeopleService;

public class PeopleAction {
	
	private PeopleService service;
	
	public PeopleAction() {
		this.service = new PeopleService();
	}

	public int insertOne(HttpServletRequest request) {
		PeopleDTO dto = new PeopleDTO(request);
		
		int res = service.insertOne(dto);
		
		String msg = res > 0 ? "저장 완료" : "저장 실패";
		request.setAttribute("msg", msg);
		
		return res;
	}

	public ArrayList<PeopleDTO> selectList() {
		
		ArrayList<PeopleDTO> listc = service.selectList();
		
		return listc;
	}

	public PeopleDTO selectOne(HttpServletRequest request) {
	
		int num = Integer.parseInt(request.getParameter("num"));
		PeopleDTO dto = service.selectOne(num);
		
		return dto;
	}

}
