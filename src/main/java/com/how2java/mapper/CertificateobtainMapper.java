package com.how2java.mapper;


import com.how2java.pojo.Certificateobtain;

public interface CertificateobtainMapper {
    int insert(Certificateobtain record);

    int insertSelective(Certificateobtain record);

    //查询用户ID的获得证书表信息
    Certificateobtain select(int costuid);

    //更新用户获得证书表
    int update(Certificateobtain obtainemployment);

    //删除信息
    void delete(int costuid);
}