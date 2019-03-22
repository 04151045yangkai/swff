package com.how2java.mapper;



import com.how2java.pojo.Login;

import java.util.List;

public interface LoginMapper {

    int insertSelective(Login login); //添加用户

    Login login(Login login); //登陆功能

    int deleteByPrimaryKey(Integer userId);//删除用户

    Login selectByPrimaryKey(Integer userId); //查询用户

    List<Login> selectAllUser();//查询所有用户

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);//更新用户信息

}