package com.book.bo.mapper;

import com.book.bo.entity.Customer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {
    //添加用户
    @Insert("INSERT INTO `book`.`tb_customer`" +
            "(`username`, `headimage`, `userpwd`, `City`, `address`, `postcode`, `cardnum`, `cardtype`, `Grade`, `amount`, `Tel`, `email`, `freeze`)" +
            " VALUES (#{userName}, #{headImage},  #{userPwd},  #{city},  #{address},  #{postCode}, " +
            " #{cardNum},  #{cardType},  #{grade},  #{amount},  #{tel},  #{email},  #{freeze})")
    int insertCustomer(Customer customer);

    //删除用户
    @Delete("DELETE FROM `book`.`tb_customer` WHERE `userid` = 1")
    int deleteCustomer(Customer customer);
}
