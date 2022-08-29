package com.root.emr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.root.emr.model.ApiVO;
import com.root.emr.persistance.ApiDao;
import com.root.emr.service.ApiService;

public class ApiServiceImplV1 implements ApiService {
	
	@Autowired
	private ApiDao apiDao;

	@Override
	public List<ApiVO> findByKorNm(String korNm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ApiVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ApiVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(ApiVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ApiVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
