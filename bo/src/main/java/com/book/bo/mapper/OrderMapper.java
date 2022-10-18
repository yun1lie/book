package com.book.bo.mapper;

import com.book.bo.entity.Order;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface OrderMapper {
    @Insert("INSERT INTO `book`.`tb_order`" +
            "(`bookname`, `username`, `address`, `postcode`, `Tel`, `email`, `payment`, `transportmode`, " +
            "`rebate`, `orderdate`, `Bz`, `enforce`)" +
            " VALUES (#{bookName}, #{userName},  #{address}, #{postCode}, #{tel}, #{email}, #{payment}, #{transportMode}, " +
            "#{rebate}, #{orderDate}, #{bz}, #{enforce})")
    int insertOrder(Order order);

    @Delete("DELETE FROM `book`.`tb_order` WHERE `orderid` = #{orderId}")
    int deleteOrder(Order order);

    @Update("UPDATE `book`.`tb_order` SET `bookname` = #{bookName}, `username` =  #{userName}, `address` =  #{address}, `postcode` =  #{postCode}, `Tel` =  #{tel}, `email` =  #{email}, `payment` =  #{payment}," +
            " `transportmode` =  #{transportMode}, `rebate` =  #{rebate}, `orderdate` =  #{orderDate}, `Bz` =  #{bz}, `enforce` =  #{enforce} WHERE `orderid` =  #{orderId}")
    int updateOrder(Order order);

    @Select("SELECT * FROM `book`.`tb_order`")
    List<Order> findAllOrder();

    @Select("SELECT * FROM `book`.`tb_order`  WHERE `orderid` = #{orderId}")
    List<Order> findOrder(Order order);
}
