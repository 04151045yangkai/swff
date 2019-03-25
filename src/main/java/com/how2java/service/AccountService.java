package com.how2java.service;

import com.how2java.pojo.Account;

public interface AccountService {

    int deleteByPrimaryKey(String idcard); //删

    int insert(Account record);//增

    int insertSelective(Account record);

    Account selectByPrimaryKey(String idcard);//查

    int updateByPrimaryKeySelective(Account record);//更新
    int updateByPrimaryKey(Account record);//更新
}
