package com.how2java.service.impl;

import com.how2java.mapper.AccountMapper;
import com.how2java.pojo.Account;
import com.how2java.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountMapper accountMapper;


    @Override
    public int deleteByPrimaryKey(String idcard) {
        return accountMapper.deleteByPrimaryKey(idcard);
    }

    @Override
    public int insert(Account record) {
        return accountMapper.insert(record);
    }

    @Override
    public int insertSelective(Account record) {
        return accountMapper.insert(record);
    }

    @Override
    public Account selectByPrimaryKey(String idcard) {
        return accountMapper.selectByPrimaryKey(idcard);
    }

    @Override
    public List<Account> selectAllAccount() {
        return accountMapper.selectAllAccount();
    }

    @Override
    public int updateByPrimaryKeySelective(Account record) {
        return accountMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Account record) {
        return accountMapper.updateByPrimaryKey(record);
    }
}
