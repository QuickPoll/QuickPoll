package com.skuniv.QuickPoll.dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.QuickPoll.connect.ConnectDB;

@SuppressWarnings("unchecked")
@Repository("ProfessorDao")
public class ProfessorDao extends ConnectDB {
	public String selectProfessorPassword(int professor_id) {
		return (String)selectOne("professor.selectProfessorPassword", professor_id);
	}

	//
	public List<Map<String, Object>>selectProfessorList(int professor_id) {
		return (List<Map<String,Object>>)selectList("professor.selectProfessorList", professor_id);
	}
	// select mentee list
	public List<Map<String, Object>>selectMenteeList(int professor_id) {
		return (List<Map<String,Object>>)selectList("professor.selectMenteeList", professor_id);
	}
	
	public List<LinkedHashMap<String, Object>>selectObjectiveQuestionList(String course_id) {
		return (List<LinkedHashMap<String, Object>>)selectList("professor.selectObjectiveQuestionList", course_id);
	}
	public List<LinkedHashMap<String, Object>>selectSubjectiveQuestionList(String course_id) {
		return (List<LinkedHashMap<String, Object>>)selectList("professor.selectSubjectiveQuestionList", course_id);
	}
}
