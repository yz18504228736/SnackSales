package com.shop.biz;

import com.shop.dao.AddressMapper;
import com.shop.entity.Address;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class AddressBiz {
    @Resource
    private AddressMapper addressMapper;

    //根据用户id获取用户常用发货地址
    public List<Address>  findAddressByUserId(int userId){
       return addressMapper.selectAddressByUserId(userId);
    }
    public Address findAdressByAddressId(int addressId){
        return addressMapper.findByAddressId(addressId);
    }

   public void save(Address address){
        addressMapper.insert(address);
   }

   public void delete(Address address){
       addressMapper.deleteByPrimaryKey(address.getAddressId());
   }

   public void update(Address address){
       addressMapper.updateByPrimaryKey(address);
   }

   public Address findAdressById(int addressId){
        return addressMapper.selectByPrimaryKey(addressId);
   }

}
