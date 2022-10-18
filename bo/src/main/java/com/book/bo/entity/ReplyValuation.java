package com.book.bo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReplyValuation {
    private Integer rvId;
    private Integer valuationId;
    private String username;
    private String replyContent;
    private String replyTime;

}
