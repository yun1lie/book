package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InfBook {
    private Integer bookId;
    private String bookNum;
    private String bookName;
    private String author;
    private String bookConcern;
    private String publishTime;
    private Double bookPrice;
    private String infBook;
    private String infAuthor;
    private String bookImage;
}
