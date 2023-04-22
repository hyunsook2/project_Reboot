package Am;

import common.JDBConnPool;

public class AmDAO2 extends JDBConnPool{

	public AmDAO2() {
		super();
	}

	public int insertDB(AmDTO2 dto) {
		int res=0;
		String sql = "insert into am2(id, type, time_) values (?,?,?)";
		try {
		psmt=con.prepareStatement(sql);
		psmt.setString(1,dto.getId());
		psmt.setString(2,dto.getType());
		psmt.setTimestamp(3, dto.getTime_());
		System.out.println(dto.getId());
		res= psmt.executeUpdate();
		System.out.println(res);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	public AmDTO2 getAmMember2(String id) {
		AmDTO2 a2dto = new AmDTO2();
		String SQL = "SELECT * FROM AM WHERE id = ?";
		try {
			psmt = con.prepareStatement(SQL);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				a2dto.setId(rs.getString("id"));
				a2dto.setType(rs.getString("Type"));
				a2dto.setTime_(rs.getTimestamp("Time_"));
			} 
		} catch (Exception e) {
			System.out.println("에러 발생");
			e.printStackTrace();
		} 	
		return a2dto;       
	}

}
