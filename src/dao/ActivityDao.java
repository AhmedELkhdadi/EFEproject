package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import beans.Activity;

public interface ActivityDao {
	 public List<Activity> SelectAll();
	 public List<Activity> SelectDayActivities(int Day);
	 public int eventState();// 0: event hasn't started yet, 1:event ongoing, 2:event over,3:error 
	 public Long getStartInMs();  //returns time in milliseconds of first activity of the event
	 public Activity currentActivity();
	 public static void handleEventState(HttpServletRequest request) {
		 	DaoFactory daoFactory = DaoFactory.getInstance();
		 	ActivityDao activityDao = daoFactory.getActivity();
	    	int state = activityDao.eventState();
			request.setAttribute("eventState", state);
			switch (state){
			case 0:
				request.setAttribute("msUntillStart", activityDao.getStartInMs());
				break;
			case 1:
				request.setAttribute("currentActivity",activityDao.currentActivity());
				break;
			}
	    }
}
