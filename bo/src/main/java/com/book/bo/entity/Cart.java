package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
    private Integer userid;
    private String productName;
    private String image;
    private String checked;
    private Integer id;
    private Double price;
    private Integer num;
}
