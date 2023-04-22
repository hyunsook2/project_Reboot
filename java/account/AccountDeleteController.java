package account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import profile.ProfileDAO;
import profile.ProfileDTO;
import utils.AlertFunc;

//수정된 값 디비에 넣는 곳 
@WebServlet("/account/accountdelete.do")
public class AccountDeleteController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//아래 코드는 마이페이지에서 디비 -> 값 받아오는 코드 
		setDelete(); // 다오에 만들어서  
		
		String id = request.getParameter(id);

		
		String pass = request.getParameter("password");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		String ad = request.getParameter("ad");
		// 위에 4줄이 list 한줄로 끝남
		
		
		ProfileDAO dao = new ProfileDAO();
		ProfileDTO pdto = dao.editMember(id, pass,  pnum, ad); // 왜 기능이 안되노?
		request.setAttribute("pdto", pdto);

		/*
		 * RequestDispatcher rd = request.getRequestDispatcher("../Reboot/MyPage.jsp");
		 * rd.forward(request, response);
		 */
		AlertFunc.alertLocation(response, "계정 삭제에 성공했습니다.", "../rebootServlet/accountList.do");
	
	}
	
}
