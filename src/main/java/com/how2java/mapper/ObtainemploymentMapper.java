package com.how2java.mapper;


import com.how2java.pojo.Obtainemployment;

public interface ObtainemploymentMapper {

    //插入表数据
    int insert(Obtainemployment record);

    //有选择的插入表数据，不限制插入字段
    int insertSelective(Obtainemployment record);

    //查询用户ID的就业意向信息
    Obtainemployment select(int oeid);

    //更新用户就业意向表
    int update(Obtainemployment obtainemployment);

    //删除信息
    void delete(int oeid);

}