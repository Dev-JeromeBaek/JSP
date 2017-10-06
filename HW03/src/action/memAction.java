package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import dto.memDTO;
import service.memService;

public class memAction {
	
	private memService service;
	
	public memAction() {
		this.service = new memService();
	}

	public int insertInfo(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		memDTO dto = new memDTO(id, pw, name, age, birth, email);
		
		int res = service.insertInfo(dto);
		
		if(res > 0)
		{
			request.setAttribute("msg", "저장 완료");
			request.setAttribute("nowDTO", dto);
		} else {
			request.setAttribute("msg", "저장 실패");
			request.setAttribute("nowDTO", dto);
		}
		return res;
	}

	public ArrayList<memDTO> showList(HttpServletRequest request) {
		
		ArrayList<memDTO> listc = service.showList();
		if(listc == null) {
			request.setAttribute("msg", "저장된 정보가 없습니다.");
		} else {
			request.setAttribute("listc", listc);
		}
		return listc;
	}

}
