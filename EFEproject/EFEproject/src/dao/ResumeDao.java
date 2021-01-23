package dao;
import java.util.List;

import beans.Resume;

public interface ResumeDao {
	List<Resume> getStandResumes(String stand_id);
	Resume cvAlreadySent(String stand_id, String p_id);
	boolean addResume(String cvId,String path,String stand_id,String p_id,String p_name);
	boolean changePath(String resumeId,String newPath);
}
