package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dto.stuDTO;
import service.stuService;

public class stuAction {
	
	private stuService service;
	
	public stuAction() {
		this.service = new stuService();
	}

	public int insertOne(HttpServletRequest request) {
		stuDTO dto = new stuDTO(request);
		int res = service.insertOne(dto);
		return res;
	}

	public ArrayList<stuDTO> selectListPage() {
		ArrayList<stuDTO> listc = service.selectListPage();
		return listc;
	}

	public stuDTO selectOne(int num) {
		stuDTO dto = service.selectOne(num);
		return dto;
	}

	public stuDTO updatePage(int num) {
		stuDTO dto = service.selectOne(num);
		return dto;
	}

	public int updateOne(HttpServletRequest request, int num) {
		stuDTO dto = new stuDTO(request, num);
		int res = service.updateOne(dto);
		return res;
	}

	public int deleteOne(int num) {
		int res = service.deleteOne(num);
		return res;
	}

}
