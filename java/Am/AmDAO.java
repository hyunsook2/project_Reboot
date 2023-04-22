package Am;

import java.sql.Date;
import java.sql.Timestamp;

import common.JDBConnPool;
import profile.ProfileDTO;

public class AmDAO extends JDBConnPool {

	public AmDAO() {
		super();
	}

	public AmDTO getAmMember(String id) {
		AmDTO pdto = new AmDTO();
		String SQL = "SELECT * FROM AM WHERE id = ?";
		try {
			psmt = con.prepareStatement(SQL);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				pdto.setId(rs.getString("id"));
				pdto.setDeptn(rs.getInt("deptn"));
				pdto.setName(rs.getString("name"));
				pdto.setGrade(rs.getInt("grade"));
			} 
		} catch (Exception e) {
			System.out.println("에러 발생");
			e.printStackTrace();
		} 	
		return pdto;       
	}
	

}
