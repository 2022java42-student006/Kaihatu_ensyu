package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import la.bean.MemberBean;

public class LoginDAO {
	private String url = "jdbc:postgres:webinn";
	private String user = "webinnuser";
	private String pass = "himitu";

	public LoginDAO() throws DAOException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new DAOException("ドライバの登録に失敗しました。");
		}
	}

	public boolean DisplayMemInfo(int login_id, String password) throws DAOException {
		String sql = "SELECT * FROM member_information WHERE login_id = ? and password = ?";
		try (Connection con = DriverManager.getConnection(url, user, pass);
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();) {
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException("レコードの取得に失敗しました。");
		}
	}
public void findMember(MemberBean member) throws DAOException{
		
		String sql = "SELECT * FROM member_information WHERE login_id = ? and password = ?";
		
		try(
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement st = con.prepareStatement(sql);){
				
				
				st.setString(1, member.getName());
				st.setString(2, member.getMem_address());
				st.setString(3, member.getPhone());
				st.setString(4, member.getEmail());
				st.setInt(5, member.getLogin_id());
				st.setString(6, member.getPass());
				
				
				st.executeQuery();
				
				
			}catch(SQLException e) {
				e.printStackTrace();
				throw new DAOException("レコードの操作に失敗しました。");
			}
		
	}
	

}
