package com.how2java.service.impl;

import com.how2java.mapper.PoorstudentcardMapper;
import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.PoorstudentcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class PoorstudentcardServiceImpl implements PoorstudentcardService {

    @Autowired
    PoorstudentcardMapper poorstudentcardMapper;

    @Override
    public int insert(Poorstudentcard record) {
        return poorstudentcardMapper.insert(record);
    }


    @Override
    public int addSelective(Poorstudentcard record) {
        return poorstudentcardMapper.insertSelective(record);
    }

    @Override
    public Poorstudentcard checkDataByID(int poolID) {
        return poorstudentcardMapper.select(poolID);
    }

    @Override
    public int UpdateFromValue(Poorstudentcard poorstudentcard) {
        return poorstudentcardMapper.update(poorstudentcard);
    }

    @Override
    public void deleteInfoByData(int poorID) {
        poorstudentcardMapper.delete(poorID);

    }
}
