package approval;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import profile.ProfileDAO;
import profile.ProfileDTO;

@WebServlet("/approval/approvalNoPage.do")
public class ApprovalNoPageController extends HttpServlet {

    public ApprovalNoPageController() {
        super();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String id = (String) req.getSession().getAttribute("loginId");

    	
		ProfileDTO dto = new ProfileDTO();
		ProfileDTO dto2 = new ProfileDTO();
		ProfileDAO pDao = new ProfileDAO();
		
		dto = pDao.getMember(id);
		
		dto2 = pDao.getManager(id);

		req.setAttribute("dto", dto);
		req.setAttribute("dto2", dto2);
		
		req.getRequestDispatcher("/approval/ApprovalNoPage.jsp").forward(req, resp);
    }
}
