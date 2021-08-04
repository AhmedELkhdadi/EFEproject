package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import beans.Entreprise;
import beans.Representative;

public class RepresentativeDaoImpl implements RepresentativeDao {
	private DaoFactory daoFactory;
	private EntrepriseDao entDao;

	RepresentativeDaoImpl(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
		this.entDao = daoFactory.getEntreprise();
	}

	public boolean addRep(Representative rep) {
		Connection conn = null;
		PreparedStatement prepStmt = null;

		try {
			conn = daoFactory.getConnection();
			prepStmt = conn.prepareStatement(
					"INSERT INTO representatives(id_r,login,password,name,fname,email,phone) Values(?,?,?,?,?,?,?)");
			UUID uid = UUID.randomUUID();
			String id = "" + uid; // this is for casting, since direct casting is not possible, and there is no
									// setUUID in jdbc
			rep.setId(id);
			rep.setApproved(false);
			prepStmt.setString(1, id);
			prepStmt.setString(2, rep.getLogin());
			prepStmt.setString(3, rep.getPassword());
			prepStmt.setString(4, rep.getName());
			prepStmt.setString(5, rep.getFname());
			prepStmt.setString(6, rep.getEmail());
			prepStmt.setString(7, rep.getTel());

			prepStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean deleteRep(Representative rep) {
		Connection conn = null;
		PreparedStatement prepStmt = null;

		try {
			conn = daoFactory.getConnection();
			prepStmt = conn.prepareStatement("Delete FROM participants WHERE id=?");
			prepStmt.setString(1, rep.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try { // we delete the enterprise associated with rep
			conn = daoFactory.getConnection();
			prepStmt = conn.prepareStatement("Delete FROM entreprise WHERE representative=?");
			prepStmt.setString(1, rep.getId());
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean authenticate(Representative rep) {
		Connection conn = null;
		Statement query = null;

		String log = rep.getLogin();
		String pw = rep.getPassword();

		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet result = query
					.executeQuery("SELECT * FROM representatives WHERE login='" + log + "' AND password='" + pw + "';");
			if (result.next() == false)
				return false;
			else {
				String id_r = result.getString("id_r");
				rep.setId(id_r);
				rep.setName(result.getString("name"));
				rep.setFname(result.getString("fname"));
				rep.setEmail(result.getString("email"));
				rep.setTel(result.getString("phone"));
				rep.setApproved(result.getBoolean("approved"));
				rep.setStatus(2);
				Entreprise ent = entDao.selectEntreprise(id_r);
				if (ent == null)
					return false;
				else
					rep.entreprise = ent;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public List<Representative> SelectNotYetApproved() {
		List<Representative> repList = new ArrayList<Representative>();
		Connection conn = null;
		Statement query = null;

		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM representatives WHERE approved IS NULL;");
			while (res.next()) {
				String id_r = res.getString("id_r");
				Representative rep = new Representative(id_r, res.getString("login"), null, res.getString("name"),
						res.getString("fname"), res.getString("email"), res.getString("phone"), null,
						res.getBoolean("approved"), 2);
				rep.entreprise = entDao.selectEntreprise(id_r);
				repList.add(rep);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return repList;
	}

	@Override
	public List<Representative> SelectApproved() {
		List<Representative> repList = new ArrayList<Representative>();
		Connection conn = null;
		Statement query = null;

		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet res = query.executeQuery("SELECT * FROM representatives WHERE approved='1';");
			while (res.next()) {
				String id_r = res.getString("id_r");
				Representative rep = new Representative(id_r, res.getString("login"), null, res.getString("name"),
						res.getString("fname"), res.getString("email"), res.getString("phone"), null,
						res.getBoolean("approved"), 2);
				rep.entreprise = entDao.selectEntreprise(id_r);
				repList.add(rep);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return repList;
	}

	@Override
	public Representative selectRep(String id_r) {
		Connection conn = null;
		Statement query = null;
		Representative rep = null;
		try {
			conn = daoFactory.getConnection();
			query = conn.createStatement();
			ResultSet repRes = query.executeQuery(
					"SELECT id_r,name,fname,email,phone,approved FROM representatives WHERE id_r='" + id_r + "';");
			if (!repRes.next()) {
				return null;
			} else {
				Entreprise ent = entDao.selectEntreprise(id_r);
				if (ent == null)
					return null;
				else {
					rep = new Representative(id_r, repRes.getString("name"), repRes.getString("fname"),
							repRes.getString("email"), repRes.getString("phone"), ent, 2);
					boolean approved = repRes.getBoolean("approved");
					if (!repRes.wasNull()) // if approved is not null in database we set approved in rep, else we leave
											// it null to mean that it is still on wait
						rep.setApproved(approved);
					return rep;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
