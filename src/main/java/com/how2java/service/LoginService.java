package com.how2java.service;

import java.util.List;

import com.how2java.pojo.Login;

public interface LoginService {

	List<Login> selectAllUser();//查询所有用户

	Login login(Login login); //登陆

	int deleteByPrimaryKey(Integer userId);//删除用户

	int insertSelective(Login login); //添加用户

	Login selectByPrimaryKey(Integer userId); //查询用户

	int updateByPrimaryKey(Login record);//更新用户信息

//	Login login(int userId,String passWord,int userFlag);
}
