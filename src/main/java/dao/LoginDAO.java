package dao;

public class LoginDAO {
	String url ="jdbc:postgresql;webinn";
	String user="webinnuser";
	String pass="himitu";
	
	public LoginDAO()throws DAOException{
		try {
			Class.forName("org.postgresql");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("JDBCドライバの登録に失敗しました。");
		}
	}
	
	/*public LoginBean findAccount(LoginBean lb) throws DAOException {
		String sql = "SELECT mem.name,mem.tel,mem.email,log.login_id "
				+"FROM member_information mem INNER JOIN member_information_login log "
				+ "ON mem.mem_id = log.mem_id WHERE mem.mem_id = 1";
				 
		try (Connection con=DriverManager.getConnection(url, user, pass);
			PreparedStatement ps = con.prepareStatement(sql);
				
				){
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}*/

}
