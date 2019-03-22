package com.how2java.service.impl;

import java.util.List;

import com.how2java.mapper.LoginMapper;
import com.how2java.pojo.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.how2java.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	LoginMapper loginMapper;

	@Override
	public List<Login> selectAllUser() { //查询所有的用户
		return loginMapper.selectAllUser();
	}

	@Override
	public Login login(Login login) { //登陆功能

		return loginMapper.login(login);
	}

	@Override
	public int deleteByPrimaryKey(Integer userId) { //删除
		return loginMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public int insertSelective(Login login) { //插入用户
		return loginMapper.insertSelective(login);
	}

	@Override
	public Login selectByPrimaryKey(Integer userId) { //查询一条用户信息
		return loginMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKey(Login record) {
		return loginMapper.updateByPrimaryKey(record);
	}


}
