package com.how2java.service.impl;

import com.how2java.mapper.BirthplaceMapper;
import com.how2java.pojo.Birthplace;
import com.how2java.service.BirthplaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BirthplaceServiceImpl implements BirthplaceService {

    @Autowired
    BirthplaceMapper birthplaceMapper;
    @Override
    public int insert(Birthplace record) {
        return birthplaceMapper.insert(record);
    }

    @Override
    public Birthplace selectBirthplaceInfo(int birthid) {
        return birthplaceMapper.select(birthid);
    }

    @Override
    public int deleteBirthplaceById(int birthid) {
        return birthplaceMapper.delete(birthid);
    }

    @Override
    public int updateBirthplace(Birthplace birthplace) {
        return birthplaceMapper.update(birthplace);
    }
}
