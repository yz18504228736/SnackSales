package com.shop.dao;

import com.shop.entity.Menutype;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface MenutypeMapper {
    int deleteByPrimaryKey(Integer menuTypeId);

    int insert(Menutype record);

    int insertSelective(Menutype record);

    Menutype selectByPrimaryKey(Integer menuTypeId);

    int updateByPrimaryKeySelective(Menutype record);

    int updateByPrimaryKey(Menutype record);

    long findCount();

    List<Menutype> findAll(@Param("firstResult") int firstResult, @Param("maxResults") int maxResults);

    List<Menutype> findAlls();
}