package com.shop.dao;

import com.shop.entity.Address;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface AddressMapper {
    @Delete({
        "delete from address",
        "where address_id = #{addressId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer addressId);

    @Insert({
        "insert into address (address_id, user_id, ",
        "address_name, receiver_name, ",
        "phonenum, unicode)",
        "values (#{addressId,jdbcType=INTEGER}, #{user.userId,jdbcType=INTEGER}, ",
        "#{addressName,jdbcType=VARCHAR}, #{receiverName,jdbcType=VARCHAR}, ",
        "#{phonenum,jdbcType=VARCHAR}, #{unicode,jdbcType=VARCHAR})"
    })
    int insert(Address record);

    int insertSelective(Address record);

    @Select({
        "select",
        "address_id, user_id, address_name, receiver_name, phonenum, unicode",
        "from address",
        "where address_id = #{addressId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.AddressMapper.BaseResultMap")
    Address selectByPrimaryKey(Integer addressId);

    //根据用户id获取用户常用地址列表
    @Select({
            "select",
            "address_id, user_id, address_name, receiver_name, phonenum, unicode",
            "from address",
            "where user_id = #{userId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.AddressMapper.BaseResultMap")
    List<Address> selectAddressByUserId(int userId);

    int updateByPrimaryKeySelective(Address record);

    @Update({
        "update address",
        "set user_id = #{user.userId,jdbcType=INTEGER},",
          "address_name = #{addressName,jdbcType=VARCHAR},",
          "receiver_name = #{receiverName,jdbcType=VARCHAR},",
          "phonenum = #{phonenum,jdbcType=VARCHAR},",
          "unicode = #{unicode,jdbcType=VARCHAR}",
        "where address_id = #{addressId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Address record);


    @Select({
            "select",
            "address_id, user_id, address_name, receiver_name, phonenum, unicode",
            "from address",
            "where address_id = #{addressId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.AddressMapper.BaseResultMap")
    Address findByAddressId(int addressId);
}