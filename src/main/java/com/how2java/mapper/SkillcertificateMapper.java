package com.how2java.mapper;


import com.how2java.pojo.Skillcertificate;

public interface SkillcertificateMapper {
    int deleteByPrimaryKey(int scid);

    int insert(Skillcertificate record);

    int insertSelective(Skillcertificate record);

    Skillcertificate selectByPrimaryKey(int scid);

    int updateByPrimaryKeySelective(Skillcertificate record);

    int updateByPrimaryKey(Skillcertificate record);
}