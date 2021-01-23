package dao;

import java.util.List;

import beans.Representative;

public interface RepresentativeDao {
	boolean addRep(Representative participant);
	boolean deleteRep(Representative participant);
	boolean authentify(Representative representative);
	List<Representative> SelectApproved();
	List<Representative> SelectNotYetApproved();
	Representative selectRep(String id);
	
	
}
