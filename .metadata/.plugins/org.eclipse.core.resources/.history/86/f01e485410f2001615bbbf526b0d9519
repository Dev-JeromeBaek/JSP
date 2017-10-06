package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.aAction;
import dto.stuDTO;
import dto.teaDTO;

@WebServlet("/a/*")
public class aController extends HttpServlet {
	
	@Override
	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		aWorks(request, response);
	}
	
	@Override
	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		aWorks(request, response);
	}
	
	private void aWorks(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		String rcvUri = request.getRequestURI();
		String contPath = request.getContextPath();
		String svlPath = request.getServletPath();
		
		String works = rcvUri.replaceAll(contPath+svlPath+"/", "");
		System.out.println();
		System.out.println("rcvUri : " + rcvUri);
		System.out.println("contPath : " + contPath);
		System.out.println("svlPath : " + svlPath);
		System.out.println("works : " + works);
		
		String centerView = null;
		String topView = null;
		String leftView = null;
		
		aAction action = new aAction();
		
		if(works.equals("home")) {
			request.setAttribute("msg", "홈 화면으로 이동합니다.");
			
		} else if(works.equals("homeLog")) {
			request.setAttribute("msg", "홈 화면으로 이동합니다.");
			centerView = "/centerIndex.jsp";
			leftView = "/leftIndex.jsp";
			topView = "/topIndex.jsp";
			
		} else if(works.equals("loginCheck")) {
			teaDTO dto = action.loginCheck(request);
			if(dto != null)
			{
				request.setAttribute("log", 1);
				request.setAttribute("dto", dto);
				topView = "/login.jsp";
				request.setAttribute(
						"msg", dto.getTname() + "님 환영합니다.");
				
			} else {
				request.setAttribute(
						"msg", "아이디, 비밀번호가 일치하지 않습니다.");
			}
//		} else if(works.equals("popup")) {
//			ArrayList<stuDTO> listc = action.thakntban(request);
//			request.setAttribute("listc", listc);
//			
//			action = new aAction();
//			ArrayList<stuDTO> listc2 = action.countmale(request);
//			request.setAttribute("lsitc2", listc2);
//			
//			action = new aAction();
//			ArrayList<stuDTO> listc3 = action.countfemale(request);
//			request.setAttribute("listc3", listc3);
//		
////			System.out.println("counthaknban : " + counthaknban);
////			System.out.println("listc2 : " + listc2);
////			System.out.println("countfemale : " + countfemale);
		} else if(works.equals("nonPop")) {
			request.setAttribute("msg", "1분동안 팝업창을 닫습니다.");
		} else if(works.equals("loginOk")) {
			centerView = "/centerIndex.jsp";
			leftView = "/leftIndex.jsp";
			topView = "/topIndex.jsp";
		
		} else if(works.equals("logOut")) {
			topView = "/logout.jsp";
			request.setAttribute("msg", "로그아웃 되었습니다.");
			
		} else if(works.equals("tJoin")) {
			request.setAttribute("msg", "회원가입 페이지로 이동합니다.");
			centerView = "/teaJoin.jsp";
			
		} else if(works.equals("joinOk")) {
			int res = action.joinOk(request);
			if(res > 0) {
				request.setAttribute("msg", "회원가입 성공");
			} else if(res < 0) {
				request.setAttribute("msg", "이미 가입되어있는 아이디입니다.");
				centerView = "/teaJoin.jsp";
			} else {
				request.setAttribute("msg", "회원가입 실패");
			}
			
		} else if(works.equals("myInfo")) {
			request.setAttribute("msg", "내 정보 보기로 이동합니다.");
			centerView = "/teaInfo.jsp";
			
		} else if(works.equals("teaMod")) {
			request.setAttribute("msg", "내 정보 수정페이지로 이동합니다.");
			centerView = "/teaMod.jsp";
			
		} else if(works.equals("teaModOk")) {
			int res = action.teaModOk(request);
			if(res > 0) {
				request.setAttribute("msg", "수정 완료");
			} else {
				request.setAttribute("msg", "수정 실패");
			}
			action = new aAction();
			teaDTO dto = action.loginCheck(request);
			request.setAttribute("dto", dto);
			centerView = "/modSession.jsp";
			
		} else if(works.equals("teaDel")) {
			int res = action.teaDel(request);
			if(res > 0)
			{
				request.setAttribute("msg", "회원탈퇴 완료");
				topView = "/logout.jsp";
			} else {
				request.setAttribute("msg", "회원탈퇴 실패");
			}
			
		} else if(works.equals("insertStuInfoPage")) {
			
			request.setAttribute("msg", "학생 정보 입력 페이지로 이동합니다.");
			centerView = "/insertStuInfoPage.jsp";
			
		} else if(works.equals("saveStu")) {
			MultipartRequest mreq = new MultipartRequest(
					request,
"C:/Users/Yeob's/Desktop/eclipse/JSP_Works/HW0210/WebContent/stuPic",
					1024*1024*30, 
					"UTF-8",
					new DefaultFileRenamePolicy());
			
			int res = action.saveStu(mreq);
			if(res > 0) {
				request.setAttribute("msg", "학생 정보 저장 성공");
			} else {
				request.setAttribute("msg", "학생 정보 저장 실패");
			}
//	===================================================================
//		이부분은 정보 저장 시 사진이 바로 보이지 않는 이클립스 문제로
//		보기에 좋지 않아 뺐습니다. (주석달지 않으면 바로 학생 리스트 보기로 이동합니다.)
//			action = new aAction();
//			ArrayList<stuDTO> listc = action.showStuList(request);
//			request.setAttribute("listc", listc);
//			centerView = "/showStuList.jsp";
//	===================================================================
			
		} else if(works.equals("stuGrade1")) {
			
			request.setAttribute("msg", 
					"성적입력할 학생 검색 페이지로 이동합니다.");
			centerView = "/stuGrade1.jsp";
			
		} else if(works.equals("stuGrade2")) {
			
			ArrayList<stuDTO> listc = action.stuGrade2(request);
			if(listc != null) {
				request.setAttribute("msg", "검색 성공");
				request.setAttribute("listc", listc);
				centerView = "/stuGrade2.jsp";
			} else {
				request.setAttribute("msg", "없는 학생 이름입니다.");
				centerView = "/stuGrade1.jsp";
			}
			
		} else if(works.equals("insertStuGradePage")) {
			
			stuDTO sdto = action.insertStuGradePage(request);
			request.setAttribute("sdto", sdto);
			request.setAttribute("msg", "학생 성적 입력 페이지로 이동합니다.");
			centerView = "/insertStuGradePage.jsp";
			
		} else if(works.equals("saveGrade1")) {
			int res = action.saveGrade1(request);
			if(res > 0) {
				request.setAttribute("msg", "성적 입력 성공");
			} else {
				request.setAttribute("msg", "성적 입력 실패");
			}
			action = new aAction();
			if(res > 0) {
				stuDTO sdto = action.selectStuOne(request);
				request.setAttribute("sdto", sdto);
				centerView = "/selectStuOne.jsp";
			} else {
				ArrayList<stuDTO> listc = action.stuGrade2(request);
				request.setAttribute("listc", listc);
				centerView = "/stuGrade2.jsp";
			}
			
		} else if(works.equals("showStuList")) {
			ArrayList<stuDTO> listc = action.showStuList(request);
			if(listc != null) {
				request.setAttribute("msg", "학생정보 전체 조회 성공");
				request.setAttribute("listc", listc);
				centerView = "/showStuList.jsp";
			} else {
				request.setAttribute("msg", "학생정보 전체 조회 실패");
			}
			
		} else if(works.equals("searchhak")) {
			ArrayList<stuDTO> listc = action.searchhak(request);
			if(listc != null) {
				request.setAttribute("listc", listc);
				request.setAttribute(
				"msg", request.getAttribute("hak")+"학년 검색 성공");
				centerView = "/showStuList.jsp";
			} else {
				request.setAttribute(
				"msg", request.getAttribute("hak")+"학년 검색 실패");
				action = new aAction();
				listc = action.showStuList(request);
				if(listc != null) {
					request.setAttribute(
					"msg", "학생정보 전체 보기 페이지로 다시 이동합니다.");
					request.setAttribute("listc", listc);
					centerView = "/showStuList.jsp";
				} else {
					request.setAttribute("msg", "학생정보 전체 조회 실패");
				}
			}
			
		} else if(works.equals("selhaknban")) {
			ArrayList<stuDTO> listc = action.selhaknban(request);
			if(listc != null) {
				request.setAttribute("listc", listc);
				request.setAttribute(
					"msg", request.getAttribute("hak") + "학년 " 
					+ request.getAttribute("ban") + "반 검색 성공");
				centerView = "/showStuList.jsp";
			} else {
				request.setAttribute(
					"msg", request.getAttribute("hak") + "학년 " 
					+ request.getAttribute("ban") + "반 검색 실패");
				action = new aAction();
				listc = action.showStuList(request);
				if(listc != null) {
					request.setAttribute(
						"msg", "학생정보 전체 보기 페이지로 다시 이동합니다.");
					request.setAttribute("listc", listc);
					centerView = "/showStuList.jsp";
				} else {
					request.setAttribute("msg", "학생정보 전체 조회 실패");
				}
			}
			
			
		} else if(works.equals("selectStuOne")) {
			stuDTO sdto = action.selectStuOne(request);
			if(sdto != null) {
				request.setAttribute("msg", "학생상세 정보 조회 성공");
				request.setAttribute("sdto", sdto);
				centerView = "/selectStuOne.jsp";
			} else {
				request.setAttribute("msg", "학생상세 정보 조회 실패");
				centerView = "/showStuList.jsp";
			}
			
		} else if(works.equals("stuMod1")) {
			stuDTO sdto = action.selectStuOne(request);
			request.setAttribute("msg", "학생정보 수정페이지로 이동합니다.");
			request.setAttribute("sdto", sdto);
			centerView = "/stuMod1.jsp";
			
		} else if(works.equals("cancelMod")) {
			MultipartRequest mreq = new MultipartRequest(
					request,
"C:/Users/Yeob's/Desktop/eclipse/JSP_Works/HW0210/WebContent/stuPic",
					1024*1024*30, 
					"UTF-8",
					new DefaultFileRenamePolicy());
			
			stuDTO sdto = action.cancelMod(mreq);
			if(sdto != null) {
				request.setAttribute("msg", "수정 취소");
				request.setAttribute("sdto", sdto);
				centerView = "/selectStuOne.jsp";
			} else {
				request.setAttribute("msg", "학생상세 정보 조회 실패");
			}
			
		} else if(works.equals("stuMod2")) {
			MultipartRequest mreq = new MultipartRequest(
					request,
"C:/Users/Yeob's/Desktop/eclipse/JSP_Works/HW0210/WebContent/stuPic",
					1024*1024*30, 
					"UTF-8",
					new DefaultFileRenamePolicy());
			
			int res = action.stuMod2(mreq);
			if(res > 0) {
				request.setAttribute("msg", "수정 성공");
			} else if(res < 0) {
				request.setAttribute("msg", "서버에서 파일 삭제 실패");
			} else {
				request.setAttribute("msg", "수정 실패");
			}
			action = new aAction();
			stuDTO sdto = action.cancelMod(mreq);
			request.setAttribute("sdto", sdto);
			centerView = "/selectStuOne.jsp";
			
		} else if(works.equals("checkTeacherPassword")) {
			int snum = action.checkTeacherPassword(request);
			
			centerView = "/checkTeacherPassword.jsp";
			request.setAttribute("msg", "checkPwPage");
			request.setAttribute("snum", snum);
			
		} else if(works.equals("stuDel")) {
			int res = action.stuDel(request);
			if(res > 0) {
				request.setAttribute("msg", "삭제 성공");
			} else if(res < 0) {
				request.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
				centerView = "/checkTeacherPassword.jsp";
			} else {
				request.setAttribute("msg", "삭제 실패");
			}
			if(res >= 0) {
				action = new aAction();
				ArrayList<stuDTO> listc = 
						action.showStuList(request);
				request.setAttribute("listc", listc);
				centerView = "/showStuList.jsp";
			}
			
		} else if(works.equals("stuSearch1")) {
			
			request.setAttribute(
				"msg", "성적입력할 학생 검색 페이지로 이동합니다.");
			centerView = "/stuSearch1.jsp";
			
		} else if(works.equals("stuSearch2")) {
			
			ArrayList<stuDTO> listc = action.stuSearch2(request);
			if(listc != null) {
				request.setAttribute("msg", "검색 성공");
				request.setAttribute("listc", listc);
				centerView = "/stuSearch2.jsp";
			} else {
				request.setAttribute("msg", "없는 학생 이름입니다.");
				centerView = "/stuSearch1.jsp";
			}
			
		}
		
		
		request.setAttribute("centerView", centerView);
		request.setAttribute("topView", topView);
		request.setAttribute("leftView", leftView);
		
		RequestDispatcher rd = request.getRequestDispatcher("/mainIndex.jsp");
		rd.forward(request, response);
	}

}// Controller END
