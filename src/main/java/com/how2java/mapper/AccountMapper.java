package com.how2java.mapper;


import com.how2java.pojo.Account;

import java.util.List;

public interface AccountMapper {
    int deleteByPrimaryKey(String idcard); //删

    int insert(Account record);//增

    int insertSelective(Account record);

    Account selectByPrimaryKey(String idcard);//查

    List<Account> selectAllAccount();//查询所有用户信息

    int updateByPrimaryKeySelective(Account record);//更新

    int updateByPrimaryKey(Account record);//更新


}