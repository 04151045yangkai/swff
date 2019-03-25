package com.how2java.service;

import com.how2java.pojo.Skillcertificate;

public interface SkillcertificateService {

    int deleteByPrimaryKey(Integer scid);

    int insert(Skillcertificate record);

    int insertSelective(Skillcertificate record);

    Skillcertificate selectByPrimaryKey(Integer scid);

    int updateByPrimaryKeySelective(Skillcertificate record);

    int updateByPrimaryKey(Skillcertificate record);
}
