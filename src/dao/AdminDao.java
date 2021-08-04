package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import beans.Admin;

public interface AdminDao {
	public boolean authenticate(Admin admin);

	public boolean usernameExists(String login);

	public static int approveRejectRep(String id_r, int approval) {
		DaoFactory daoFactory = DaoFactory.getInstance();
		try {
			Connection conn = daoFactory.getConnection();
			Statement query = conn.createStatement();
			query.executeUpdate("UPDATE representatives SET approved='" + approval + "' WHERE id_r='" + id_r + "'");
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;

	}
}
