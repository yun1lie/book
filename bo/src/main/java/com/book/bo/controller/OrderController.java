package com.book.bo.controller;

import com.book.bo.entity.Order;
import com.book.bo.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class OrderController {
    @Autowired
    private OrderMapper orderMapper;

    @PostMapping("/insertOrder")
    int insertOrder(@RequestBody Order order){
        return orderMapper.insertOrder(order);
    }

    @PostMapping("/deleteOrder")
    int deleteOrder(@RequestBody Order order){
        return orderMapper.deleteOrder(order);
    }

    @PostMapping("/updateOrder")
    int updateOrder(@RequestBody Order order){
        return orderMapper.updateOrder(order);
    }

    @PostMapping("/findOrder")
    List<Order> findOrder(@RequestBody Order order){
        return orderMapper.findOrder(order);
    }

    @GetMapping("/findAllOrder")
    List<Order> findAllOrder(){
        return orderMapper.findAllOrder();
    }
}
