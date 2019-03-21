package com.how2java.mapper;


import com.how2java.pojo.Account;

public interface AccountMapper {
    int deleteByPrimaryKey(String idcard);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(String idcard);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);
}