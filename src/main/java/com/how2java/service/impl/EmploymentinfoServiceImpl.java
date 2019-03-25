package com.how2java.service.impl;

import com.how2java.mapper.EmploymentinfoMapper;
import com.how2java.pojo.Employmentinfo;
import com.how2java.service.EmploymentinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmploymentinfoServiceImpl implements EmploymentinfoService {

    @Autowired
    EmploymentinfoMapper employmentinfoMapper;

    @Override
    public int add(Employmentinfo employmentinfo) {
        return employmentinfoMapper.insert(employmentinfo);
    }

    @Override
    public int addSelective(Employmentinfo employmentinfo) {
        return employmentinfoMapper.insertSelective(employmentinfo);
    }

    @Override
    public Employmentinfo checkDataByID(int eiid) {
        return employmentinfoMapper.select(eiid);
    }

    @Override
    public int UpdateFromValue(Employmentinfo employmentinfo) {
        return employmentinfoMapper.update(employmentinfo);
    }

    @Override
    public int deleteInfoByData(int eiid) {
        return employmentinfoMapper.delete(eiid);
    }
}
