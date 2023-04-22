package rebootServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Am.AmDAO2;
import Am.AmDTO2;

@WebServlet("/rebootServlet/accountList.do")
public class AccountListController extends HttpServlet {
	
	public AccountListController() {
		super();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = (String) req.getSession().getAttribute("loginId");
    	
		AmDAO2 dao = new AmDAO2(); 
		AmDTO2 dto = new AmDTO2();
		dto = dao.getAmMember2(id);

		req.setAttribute("dto", dto);
		
		req.getRequestDispatcher("../account/manageacc.do").forward(req, resp);
	}
}
