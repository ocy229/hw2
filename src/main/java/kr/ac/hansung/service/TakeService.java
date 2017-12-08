package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.TakeDAO;
import kr.ac.hansung.model.Take;

@Service
public class TakeService {

	@Autowired
	private TakeDAO takeDao;
	
	public List<Take> getCurrent() {
		return takeDao.getTakes();
	}
	
	public void insert(Take take) {
		takeDao.insert(take);
	}
}
