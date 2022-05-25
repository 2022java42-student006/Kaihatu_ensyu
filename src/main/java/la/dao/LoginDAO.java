package la.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

}
