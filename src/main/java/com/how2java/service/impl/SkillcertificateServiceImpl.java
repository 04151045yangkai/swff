package com.how2java.service.impl;

import com.how2java.mapper.SkillcertificateMapper;
import com.how2java.pojo.Skillcertificate;
import com.how2java.service.SkillcertificateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SkillcertificateServiceImpl implements SkillcertificateService {
    @Autowired
    SkillcertificateMapper skillcertificateMapper;
    @Override
    public int deleteByPrimaryKey(Integer scid) {
        return skillcertificateMapper.deleteByPrimaryKey(scid);
    }

    @Override
    public int insert(Skillcertificate record) {
        return skillcertificateMapper.insert(record);
    }

    @Override
    public int insertSelective(Skillcertificate record) {
        return skillcertificateMapper.insertSelective(record);
    }

    @Override
    public Skillcertificate selectByPrimaryKey(Integer scid) {
        return skillcertificateMapper.selectByPrimaryKey(scid);
    }

    @Override
    public int updateByPrimaryKeySelective(Skillcertificate record) {
        return skillcertificateMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Skillcertificate record) {
        return skillcertificateMapper.updateByPrimaryKey(record);
    }
}
