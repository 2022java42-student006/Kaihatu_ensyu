package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import la.bean.MemberBean;

public class RegDAO {

	private String url = "jdbc:postgresql:webinn";
	private String user = "webinnuser";
	private String pass = "himitu";
	
	public RegDAO() throws DAOException{
		try {
			Class.forName("org.postgresql.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("JDBCドライバの登録に失敗しました。");
		}
	}

public int saveMember(MemberBean member) throws DAOException{
		
		int memberNumber = 0;
		String sql = "SELECT nextval('member_code_seq')";
		
		try(
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();){
			
				if(rs.next()) {
					memberNumber = rs.getInt(1);
				}
			
			}catch(SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの取得に失敗しました。");
			}
		
		sql = "INSERT INTO member_infomation VALUES(?, ?, ?, ?, ?, ?)";
		
		try(
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement st = con.prepareStatement(sql);){
				
				st.setInt(1, memberNumber);
				st.setString(2, member.getName());
				st.setString(3, member.getMem_address());
				st.setString(4, member.getPhoneNumber());
				st.setString(5, member.getEmail());
				st.setString(6, member.getBirthday());
				
				st.executeUpdate();
				
			}catch(SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの操作に失敗しました。");
			}
		
		sql = "INSERT INTO member_infomation_login emp(login_id,password) VALUES(?, ?)";
		
		try(
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement st = con.prepareStatement(sql);){
				
				st.setInt(1, member.getLogin_id());
				st.setString(2, member.getPass());
				
				int rows =  st.executeUpdate();
				
				return rows;
			}catch(SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの操作に失敗しました。");
			}
	}

}
