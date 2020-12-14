package com.petmet.web.service;

import java.util.List;


import com.petmet.web.dao.jdbc.JdbcQuestionDao;

import com.petmet.web.dao.QuestionDao;
import com.petmet.web.entity.Question;


public class QuestionService {
	
private QuestionDao questionDao;
	
	public QuestionService() {
		questionDao = new JdbcQuestionDao();
	}
	

	public List<Question> getList() {
		return questionDao.getList();
	}

	// --------------------------------------------
	public Question get(int id) { 
		return questionDao.get(id);
	
	}

	// -----------------------------------------
	public int insert(Question question) {
		return questionDao.insert(question);
	}

	// ----------------------------
	public int update(Question question) {
		return questionDao.update(question);

	}

	/// -----------------------------------
	public int delet(int id) {
		return questionDao.delet(id);
	}

	


}