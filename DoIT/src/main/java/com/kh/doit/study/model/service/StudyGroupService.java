package com.kh.doit.study.model.service;

import java.util.ArrayList;

import com.kh.doit.study.model.vo.PageInfo;
import com.kh.doit.study.model.vo.StudyGroup;

public interface StudyGroupService {

	/**학생 그룹 리스트 갯수 조회
	 * @return
	 */
	int getlistCount();

	/**학생 그룹 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<StudyGroup> selectList(PageInfo pi);
	
	
	


}
