package com.how2java.service;

import com.how2java.pojo.Obtainemployment;

public interface ObtainemploymentService {

    int add(Obtainemployment obtainemployment);

    int addSelective(Obtainemployment record);

    //查询用户ID的就业意向信息
    Obtainemployment checkDataByID(int oeid);

    //更新用户就业意向信息
    int UpdateFromValue(Obtainemployment obtainemployment);

    //删除信息
    void deleteInfoByData(int oeid);
}
