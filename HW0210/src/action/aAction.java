package action;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.PageDTO;
import dto.stuDTO;
import dto.teaDTO;
import service.aService;

public class aAction {
	
	aService service;
	
	public aAction() {
		// TODO Auto-generated constructor stub
		this.service = new aService();
	}
	
	public int joinOk(HttpServletRequest request) {
		teaDTO dto = new teaDTO(request);
		int res = service.joinOk(dto);
		return res;
	}

	public teaDTO loginCheck(HttpServletRequest request) {
		String logId = request.getParameter("tid");
		String logPw = request.getParameter("tpw");
		teaDTO dto = service.loginCheck(logId, logPw);
		return dto;
	}

	public int teaModOk(HttpServletRequest request) {
		int tnum = Integer.parseInt(request.getParameter("tnum"));
		String tid = request.getParameter("tid");
		teaDTO dto = new teaDTO(request, tnum, tid);
		int res = service.teaModOk(dto);
		return res;
	}
	
	public int teaDel(HttpServletRequest request) {
		int tnum = Integer.parseInt(request.getParameter("tnum"));
		int res = service.teaDel(tnum);		
		return res;
	}

	public int saveStu(MultipartRequest mreq) {
		String sname = mreq.getParameter("sname");
		String sgender = mreq.getParameter("sgender");
		int shak = Integer.parseInt(mreq.getParameter("shak"));
		int sban = Integer.parseInt(mreq.getParameter("sban"));
		String sbirth = mreq.getParameter("sbirth");
		String orgName = mreq.getOriginalFileName("upfile");
		String sysName = mreq.getFilesystemName("upfile");
		
		stuDTO sdto = new stuDTO(sname, sgender, shak, 
								sban, sbirth, orgName, sysName);
		
		int res = service.saveStu(sdto);
		System.out.println("File UpLoad Comp");
		return res;
	}
	
	public ArrayList<stuDTO> stuGrade2(HttpServletRequest request) {
		String sname = request.getParameter("sname");
		ArrayList<stuDTO> listc = service.stuGrade2(sname);
		request.setAttribute("sname", sname);
		return listc;
	}
	
	public stuDTO insertStuGradePage(HttpServletRequest request) {
		int snum = Integer.parseInt(request.getParameter("snum"));
		stuDTO sdto = service.insertStuGradePage(snum);
		return sdto;
	}
	
	public int saveGrade1(HttpServletRequest request) {
		int snum = Integer.parseInt(request.getParameter("snum"));
		stuDTO sdto = service.saveGrade1(snum);
		stuDTO sdto2 = new stuDTO(request, sdto);
		service = new aService();
		int res = service.saveGrade2(sdto2);
		return res;
	}
	
	public ArrayList<stuDTO> showStuList(HttpServletRequest request) {
		int nowPage;
		if(request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		} else {
			nowPage = 1;
		}
//		int nowPage = Integer.parseInt(request.getParameter("nowPage"));
		PageDTO pdto = new PageDTO();
		if(request.getAttribute("nowPage") != null) {
		}
		pdto.setNowPage(nowPage);
		ArrayList<stuDTO> listc = service.showStuList(pdto);
		request.setAttribute("pdto", pdto);
		return listc;
	}
	
	public ArrayList<stuDTO> searchhak(HttpServletRequest request) {
		int hak = Integer.parseInt(request.getParameter("hak"));
		ArrayList<stuDTO> listc = service.searchhak(hak);
		request.setAttribute("hak", hak);
		return listc;
	}
	
	public ArrayList<stuDTO> selhaknban(HttpServletRequest request) {
		int hak = Integer.parseInt(request.getParameter("hak"));
		int ban = Integer.parseInt(request.getParameter("ban"));
		ArrayList<stuDTO> listc = service.selhaknban(hak, ban);
		request.setAttribute("hak", hak);
		request.setAttribute("ban", ban);
		return listc;
	}

	

	public stuDTO selectStuOne(HttpServletRequest request) {
		int snum = Integer.parseInt(request.getParameter("snum"));
		stuDTO sdto = service.selectStuOne(snum);
		return sdto;
	}
	
	public stuDTO cancelMod(MultipartRequest mreq) {
		int snum = Integer.parseInt(mreq.getParameter("snum"));
		stuDTO sdto = service.cancelMod(snum);
		return sdto;
	}
	
	public int stuMod2(MultipartRequest mreq) {
		int snum = Integer.parseInt(mreq.getParameter("snum"));
		String sysname = mreq.getParameter("sysname");
		stuDTO sdto = service.stuMod2(snum);
		
		service = new aService();
		int res = 0;
		if(sdto.getSysName().equals(sysname))
		{
			stuDTO sdto2 = new stuDTO(mreq, sdto, snum);
			res = service.stuMod3(sdto2);
		} else {
			stuDTO sdto3 = new stuDTO(mreq, sdto);
			res = service.stuMod4(sdto3);
		}
		return res;
	}
	
	public int checkTeacherPassword(HttpServletRequest request) {
		int snum = Integer.parseInt(request.getParameter("snum"));
		return snum;
	}

	public int stuDel(HttpServletRequest request) {
		System.out.println("BB : " + request.getParameter("snum"));
		int snum = Integer.parseInt(request.getParameter("snum"));
		int tnum = Integer.parseInt(request.getParameter("tnum"));
		String tpw = request.getParameter("tpw");
		int res = service.stuDel(snum, tnum, tpw);
		
		return res;
	}

	public ArrayList<stuDTO> stuSearch2(HttpServletRequest request) {
		String sname = request.getParameter("sname");
		ArrayList<stuDTO> listc = service.stuSearch2(sname);
		request.setAttribute("sname", sname);
		return listc;
	}

	public ArrayList<stuDTO> thakntban(HttpServletRequest request) {
		int thak = Integer.parseInt(request.getParameter("thak"));
		int tban = Integer.parseInt(request.getParameter("tban"));
		ArrayList<stuDTO> listc = service.thakntban(thak, tban);
		return listc;
	}

	public ArrayList<stuDTO> countmale(HttpServletRequest request) {
		int thak = Integer.parseInt(request.getParameter("thak"));
		int tban = Integer.parseInt(request.getParameter("tban"));
		ArrayList<stuDTO> listc2 = service.countmale(thak, tban);
		return listc2;
	}

	public ArrayList<stuDTO> countfemale(HttpServletRequest request) {
		int thak = Integer.parseInt(request.getParameter("thak"));
		int tban = Integer.parseInt(request.getParameter("tban"));
		ArrayList<stuDTO> listc3 = service.countfemale(thak, tban);
		return listc3;
	}

}// Action END
