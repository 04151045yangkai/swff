package com.how2java.mapper;



import com.how2java.pojo.Login;

public interface LoginMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);

    public Login login(String userId, String password, int userFlag);

}