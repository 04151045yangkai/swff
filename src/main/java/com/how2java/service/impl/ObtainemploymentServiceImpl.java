package com.how2java.service.impl;

import com.how2java.mapper.ObtainemploymentMapper;
import com.how2java.pojo.Obtainemployment;
import com.how2java.service.ObtainemploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ObtainemploymentServiceImpl implements ObtainemploymentService {

    @Autowired
    ObtainemploymentMapper obtainemploymentMapper;

    @Override
    public int insert(Obtainemployment obtainemployment) {
        return obtainemploymentMapper.insert(obtainemployment);
    }

    @Override
    public int insertSelective(Obtainemployment record) {
        return obtainemploymentMapper.insertSelective(record);
    }

    @Override
    public Obtainemployment checkDataByID(int oeid) {
        return obtainemploymentMapper.select(oeid);
    }

    @Override
    public int UpdateFromValue(Obtainemployment obtainemployment) {
        return obtainemploymentMapper.update(obtainemployment);
    }

    @Override
    public int deleteInfoByData(int oeid) {
        return obtainemploymentMapper.delete(oeid);
    }
}
