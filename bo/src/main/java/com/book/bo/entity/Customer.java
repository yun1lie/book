package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
    private Integer userId;
    private String userName;
    private String headImage;
    private String userPwd;
    private String city;
    private String address;
    private String postCode;
    private String cardNum;
    private String cardType;
    private String grade;
    private String amount;
    private String tel;
    private String email;
    private Integer freeze;
}
