package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Valuation {
    private Integer valuationId;
    private String userName;
    private String bookName;
    private String appraiseSubject;
    private String appraiseContent;
    private String appraiseTime;
    private String bookConcern;
}
