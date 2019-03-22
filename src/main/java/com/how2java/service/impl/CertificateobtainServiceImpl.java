package com.how2java.service.impl;

import com.how2java.mapper.CertificateobtainMapper;
import com.how2java.pojo.Certificateobtain;
import com.how2java.service.CertificateobtainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CertificateobtainServiceImpl implements CertificateobtainService {

    @Autowired
    CertificateobtainMapper certificateobtainMapper;

    @Override
    public int add(Certificateobtain certificateobtain) {
        return certificateobtainMapper.insert(certificateobtain);
    }

    @Override
    public int addSelective(Certificateobtain certificateobtain) {
        return certificateobtainMapper.insertSelective(certificateobtain);
    }

    @Override
    public Certificateobtain checkDataByID(int costuid) {
        return certificateobtainMapper.select(costuid);
    }

    @Override
    public int UpdateFromValue(Certificateobtain certificateobtain) {
        return certificateobtainMapper.update(certificateobtain);
    }

    @Override
    public void deleteInfoByData(int costuid) {
        certificateobtainMapper.delete(costuid);
    }
}
