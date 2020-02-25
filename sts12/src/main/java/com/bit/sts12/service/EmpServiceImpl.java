package com.bit.sts12.service;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.bit.sts12.model.EmpDao;
import com.bit.sts12.model.entity.EmpVo;

//@Transactional
@Service
public class EmpServiceImpl implements EmpService {
	Logger log=LoggerFactory.getLogger(getClass());

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void selectAll(Model model) {
//		System.out.println("리스트 출력합니다...");
		EmpDao dao = sqlSession.getMapper(EmpDao.class);
		model.addAttribute("list", dao.selectAll());
	}

	@Override
	public void selectOne(int key, Model model) {
//		System.out.println("레코드를 출력합니다...");
		EmpDao dao = sqlSession.getMapper(EmpDao.class);
		model.addAttribute("bean", dao.selectOne(key));
		
	}

	@Transactional
	@Override
	public void insertOne(EmpVo bean) throws Exception {
//		System.out.println("데이터베이스에 입력하겠습니다...");
		EmpDao dao = sqlSession.getMapper(EmpDao.class);
		dao.insertOne(bean);
	}

	@Override
	public int updateOne(EmpVo bean) {
//		System.out.println("레코드를 수정하겠습니다...");
		EmpDao dao = sqlSession.getMapper(EmpDao.class);
		return dao.updateOne(bean);
	}

	@Override
	public int deleteOne(int key) {
//		System.out.println("레코드를 삭제하겠습니다...");
		EmpDao dao = sqlSession.getMapper(EmpDao.class);
		return dao.deleteOne(key);
	}

}