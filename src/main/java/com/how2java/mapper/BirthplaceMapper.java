package com.how2java.mapper;


import com.how2java.pojo.Birthplace;

public interface BirthplaceMapper {

    int insert(Birthplace record);//插入

    int insertSelective(Birthplace record); //可空插入

    Birthplace select(int birthid);

    int delete(int birthid);

    int update(Birthplace birthplace);
}