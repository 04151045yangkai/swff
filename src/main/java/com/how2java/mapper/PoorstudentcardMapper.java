package com.how2java.mapper;


import com.how2java.pojo.Poorstudentcard;

public interface PoorstudentcardMapper {
    int insert(Poorstudentcard record);

    int insertSelective(Poorstudentcard record);
}