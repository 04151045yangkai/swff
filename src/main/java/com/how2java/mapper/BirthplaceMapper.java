package com.how2java.mapper;


import com.how2java.pojo.Birthplace;

public interface BirthplaceMapper {
    int insert(Birthplace record);

    int insertSelective(Birthplace record);
}