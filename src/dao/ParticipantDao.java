package dao;

import java.util.List;
import java.util.Map;

import beans.Participant;

public interface ParticipantDao {
	boolean addParticipant(Participant participant);
	boolean delete(Participant participant);
	boolean authentify(Participant participant);
	List<Participant> SelectAll();
	Map<String,String> getStatistics();
}
