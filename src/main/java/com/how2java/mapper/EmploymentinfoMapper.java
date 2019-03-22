package com.how2java.mapper;


import com.how2java.pojo.Employmentinfo;

public interface EmploymentinfoMapper {
    int insert(Employmentinfo employmentinfo);

    int insertSelective(Employmentinfo employmentinfo);

    Employmentinfo select(int eiid);

    //更新用户获得证书表
    int update(Employmentinfo employmentinfo);

    //删除信息
    void delete(int costuid);
}