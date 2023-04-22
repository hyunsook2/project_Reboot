package approval;

import common.JDBConnPool;

public class ApprovalDAO extends JDBConnPool {

	public int insertWrite(ApprovalDTO dto) {
		int result=0;
		String sql = "INSERT INTO APPROVAL(ID, NAME, DEPTN,TITLE, CONTENT, BOSS, REGDATE, FILENAME) VALUES(?,?,?,?,?,?,SYSDATE,?)";
	try {
		psmt = con.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		psmt.setString(2, dto.getName());
		psmt.setInt(3, dto.getDeptn());
		psmt.setString(4, dto.getTitle());
		psmt.setString(5, dto.getContent());
		psmt.setString(6, dto.getBoss());
		psmt.setString(7, dto.getFilename());

		result = psmt.executeUpdate();
	}catch(Exception e) {
		System.out.println("게시물 입력 중 예외");
		e.printStackTrace();
	}
	return result;
	
	}
}
