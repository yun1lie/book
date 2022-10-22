package com.book.bo.mapper;

import com.book.bo.entity.Cart;
import com.book.bo.entity.Customer;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CustomerMapper {
    //添加用户
    @Insert("INSERT INTO `book`.`tb_customer`" +
            "(`username`, `headimage`, `userpwd`, `City`, `address`, `postcode`, `cardnum`, `cardtype`, `Grade`, `amount`, `Tel`, `email`, `freeze`)" +
            " VALUES (#{userName}, #{headImage},  #{userPwd},  #{city},  #{address},  #{postCode}, " +
            " #{cardNum},  #{cardType},  #{grade},  #{amount},  #{tel},  #{email},  #{freeze})")
    int insertCustomer(Customer customer);

    //删除用户
    @Delete("DELETE FROM `book`.`tb_customer` WHERE `userid` = #{userId}")
    int deleteCustomer(Customer customer);

    //修改用户信息
    @Update("UPDATE `book`.`tb_customer`" +
            " SET `username` = #{userName}, `headimage` = #{headImage}, `userpwd` = #{userPwd}, `City` = #{city}, `address` = #{address}, " +
            "`postcode` =  #{postCode}, `cardnum` = #{cardNum}, `cardtype` = #{cardType}, `Grade` = #{grade}, `amount` = #{amount}, " +
            "`Tel` = #{tel}, `email` = #{email}, `freeze` = #{freeze} WHERE `userid` = #{userId}")
    int updateCustomer(Customer customer);

    //查询用户信息
    @Select("select * from `book`.`tb_customer`")
    List<Customer> selectAllCustomer();

    //按照用户id查询
    @Select("select * from `book`.`tb_customer` WHERE  `userid` = #{userId}")
    List<Customer> selectCustomerById(Customer customer);

    @Select("SELECT * FROM `book`.`tb_customer` WHERE  `username` = #{userName}")
    List<Customer> selectCustomerByName(Customer customer);

    @Update("UPDATE `book`.`tb_customer` SET `amount` = `amount` + #{amount} WHERE `userid` = #{userId}")
    int customerRecharge(Customer customer);

    @Select("SELECT * FROM `book`.`view_cart` WHERE `userid` = #{userId}")
    List<Cart> getCart(Customer customer);

    @Delete("DELETE FROM `book`.`tb_cart` WHERE `userid` = #{userId}")
    int emptyCart(Customer customer);

    @Insert("INSERT INTO `book`.`tb_cart`(`userId`, `bookId`, `quantity`) VALUES (#{userid}, #{productName}, 1)")
    int addCart(Cart cart);
}
