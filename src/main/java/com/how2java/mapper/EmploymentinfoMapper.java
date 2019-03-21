package com.how2java.mapper;


import com.how2java.pojo.Employmentinfo;

public interface EmploymentinfoMapper {
    int insert(Employmentinfo record);

    int insertSelective(Employmentinfo record);
}