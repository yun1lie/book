package com.book.bo.controller;

import com.book.bo.entity.Cart;
import com.book.bo.entity.Customer;
import com.book.bo.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CustomerController {
    @Autowired
    private CustomerMapper customerMapper;

    //添加用户
    @PostMapping("/insertCustomer")
    int insertCustomer(@RequestBody Customer customer) {
        List<Customer> customerList = customerMapper.selectCustomerByName(customer);
        try {
            if (customerList.size() > 0) {
                return 0;
            }
        } catch (Exception e) {
        }
        return customerMapper.insertCustomer(customer);
    }

    //删除用户
    @PostMapping("/deleteCustomer")
    int deleteCustomer(@RequestBody Customer customer) {
        return customerMapper.deleteCustomer(customer);
    }

    //修改用户信息
    @PostMapping("/updateCustomer")
    int updateCustomer(@RequestBody Customer customer) {
        return customerMapper.updateCustomer(customer);
    }

    //查询所有用户
    @GetMapping("/getAllCustomer")
    List<Customer> getAllCustomer() {
        return customerMapper.selectAllCustomer();
    }

    //按照id查询用户
    @PostMapping("/selectCustomer")
    List<Customer> selectCustomer(@RequestBody Customer customer) {
        return customerMapper.selectCustomerById(customer);
    }

    @PostMapping("/customerLogin")
    List<Customer> customerLogin(@RequestBody Customer customer) {
        try {
            List<Customer> customerList = customerMapper.selectCustomerByName(customer);
            Customer customer1 = customerList.get(0);
            if (customer1.getUserName().equals(customer.getUserName()) && customer1.getUserPwd().equals(customer.getUserPwd())) {
                return customerList;
            }
        } catch (Exception e) {

        }
        return null;
    }

    //用户充值
    @PostMapping("/recharge")
    int customerRecharge(@RequestBody Customer customer) {
        return customerMapper.customerRecharge(customer);
    }

    //查询用户购物车
    @PostMapping("/getCart")
    List<Cart> getCart(@RequestBody Customer customer){
        return customerMapper.getCart(customer);
    }

}
