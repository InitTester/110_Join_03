package com.portfolio.www.service;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.portfolio.www.dao.JoinDao;

import at.favre.lib.crypto.bcrypt.BCrypt;

public class JoinService {
	private static final Logger log = LoggerFactory.getLogger(JoinDao.class);
	/*
	 * 회원가입 로직 처리
	 * */
	
	// joindao에 정의된 db 구문사용
	private JoinDao joinDao;
	
	public void setJoinDao(JoinDao joinDao) {
		this.joinDao = joinDao;
		log.info("\n\njoinService : " + joinDao + "in joinService \n\n");
	}
	
	// 회원가입 데이터처리
	public int join(HashMap<String,String> params) {
		
		// passwd의 암호화처리
		
		// 입력된 패스워드
		String passwd = params.get("passwd");
		// 암호화 된 패스워드
		String encPasswd  = BCrypt.withDefaults().hashToString(12,passwd.toCharArray());
		log.info("encPasswd >>>>>>>>> " + encPasswd);
		
		BCrypt.Result result = BCrypt.verifyer().verify(passwd.toCharArray(), encPasswd);
		log.info("result.verified >>>>>>>>> " + result.verified);
		
		// 암호화처리된 데이터 재정의
		params.put("passwd", encPasswd);
		
		return joinDao.join(params);
	}
}
