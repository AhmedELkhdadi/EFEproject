package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Admin;

public class AdminDaoImpl implements AdminDao {
	private DaoFactory daoFactory;

	AdminDaoImpl(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}

	public boolean authenticate(Admin admin) {
		Connection conn = null;
		Statement query = null;

		String log = admin.getLogin();
		String pw = admin.getPassword();

		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet result = query
					.executeQuery("SELECT * FROM admin WHERE login='" + log + "' AND password='" + pw + "';");
			if (result.next() == false)
				return false;
			else {
				admin.setId(result.getString("id_a"));
				admin.setName(result.getString("name"));
				admin.setFname(result.getString("fname"));
				admin.setEmail(result.getString("email"));
				admin.setTel(result.getString("phone"));
				admin.setStatus(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean usernameExists(String login) {
		Connection conn = null;
		Statement query = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query
					.executeQuery("Select count(*) as count FROM admin,participants,representatives WHERE '" + login
							+ "' IN (admin.login,participants.login,representatives.login );");
			if (res.next()) {
				if (res.getInt("count") == 0)
					return false;
				else
					return true;
			} else
				return false;
		} catch (SQLException e) {
			return false;
		}
	}

}
