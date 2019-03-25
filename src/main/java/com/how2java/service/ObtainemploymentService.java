package com.how2java.service;

import com.how2java.pojo.Obtainemployment;

public interface ObtainemploymentService {

    int insert(Obtainemployment obtainemployment);

    int insertSelective(Obtainemployment record);

    //查询用户ID的就业意向信息
    Obtainemployment checkDataByID(int oeid);

    //更新用户就业意向信息
    int UpdateFromValue(Obtainemployment obtainemployment);

    //删除信息
    int deleteInfoByData(int oeid);
}
