package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    private Integer orderId;
    private String bookName;
    private String userName;
    private String address;
    private String postCode;
    private String tel;
    private String email;
    private String payment;
    private String transportMode;
    private Double rebate;
    private String orderDate;
    private String bz;
    private Integer enforce;
}
