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
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PeopleDTO dto = new PeopleDTO(name, age);
		
		int res = service.insertOne(dto);
		
		if(res > 0) {
			request.setAttribute("msg", "저장 완료");
			request.setAttribute("dto", dto);
		} else {
			request.setAttribute("msg", "저장 실패");
			request.setAttribute("dto", dto);
		}
		
		return res;
	}

	public ArrayList<PeopleDTO> selectList(HttpServletRequest request) {// request를 해야 attribute한다.
		
		ArrayList<PeopleDTO> listc = service.selectList();
		if(listc == null) {
			request.setAttribute("msg", "저장된 정보가 없습니다.");
		} else {
			request.setAttribute("listc", listc);
		}
		
		return listc;
	}
	
}
