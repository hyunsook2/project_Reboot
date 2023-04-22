package account;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
@WebServlet("/account/accountedit.do")
public class AccountEditController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		AccountBoardDTO dto = new AccountBoardDTO();
		dto.setDeptn(Integer.parseInt(request.getParameter("deptn")));
		dto.setId(request.getParameter("id"));
		dto.setName(request.getParameter("name"));
		
		String gradeStr = request.getParameter("grade");
		int gradeNum;
		if(gradeStr.equals("팀장")) {
			gradeNum=0;
		}else if(gradeStr.equals("사원")) {
			gradeNum=1;
		}else {
			gradeNum=9;
		}
		
		dto.setGrade(gradeNum);
		
		SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyymmdd");
		SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date tempDate = null;
		try {
			tempDate = beforeFormat.parse(request.getParameter("in_d"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String transDate = afterFormat.format(tempDate);
		
		dto.setIn_d(tempDate);
		System.out.println(tempDate+"======");
		dto.setOff_d(request.getParameter("off_d"));
		dto.setPass(request.getParameter("pass"));
		
		
		SimpleDateFormat beforeFormat2 = new SimpleDateFormat("yyyymmdd");
		SimpleDateFormat afterFormat2 = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date tempDate2 = null;
		try {
			tempDate2 = beforeFormat2.parse(request.getParameter("out_d"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String transDate2 = afterFormat2.format(tempDate2);
		
		dto.setOut_d(tempDate2);
		System.out.println(tempDate2+"======");
		//dto.setOut_d(request.getParameter("out_d"));
		
		SimpleDateFormat beforeFormat3 = new SimpleDateFormat("yyyymmdd");
		SimpleDateFormat afterFormat3 = new SimpleDateFormat("yyyy-mm-dd");
		java.util.Date tempDate3 = null;
		try {
			tempDate3 = beforeFormat3.parse(request.getParameter("bday"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String transDate3 = afterFormat3.format(tempDate3);
		
		dto.setOut_d(tempDate3);
		System.out.println(tempDate3+"======");
		//dto.setBday(request.getParameter("bday"));
		dto.setPnum(request.getParameter("pnum"));
		dto.setAd(request.getParameter("ad"));
	
		
		//DAO를 통해 DB에 내용 저장
		AccountBoardDAO dao = new AccountBoardDAO();
		int result = dao.updatePost(dto);
		dao.close();
		//성공여부
		if(result==1) {//성공
			AlertFunc.alertLocation(response, "계정 수정에 성공했습니다.", "../account/manageacc.do");
		}else {
			AlertFunc.alertBack(response, "계정 생성이 실패하였습니다.");
		}
		
	}
	
}
