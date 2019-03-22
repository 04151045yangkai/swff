package com.how2java.mapper;


import com.how2java.pojo.Poorstudentcard;

public interface PoorstudentcardMapper {

    //插入表数据
    int insert(Poorstudentcard record);

    //有选择的插入表数据，不限制插入字段
    int insertSelective(Poorstudentcard record);

    /**
     * 查询用户ID 的建档立卡信息
     * @param poorid 用户ID
     * @return 返回信息参数，若无返回null
     */
    Poorstudentcard select(int poorid);

    /**
     * 更新用户档案表
     * @param poorstudentcard
     * @return
     */
    int update(Poorstudentcard poorstudentcard);

    /**
     * 删除信息;
     * @param poorid 需要删除的用户ID
     */
    int delete(int poorid);


}