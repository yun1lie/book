package com.book.bo.controller;

import com.book.bo.entity.ReplyValuation;
import com.book.bo.mapper.ReplyValuationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ReplyValuationCon {
    @Autowired
    private ReplyValuationMapper replyValuationMapper;

    @PostMapping("/insertReply")
    int insertReply(@RequestBody ReplyValuation replyValuation){
        return replyValuationMapper.insertReply(replyValuation);
    }

    @PostMapping("/deleteReply")
    int deleteReply(@RequestBody ReplyValuation replyValuation){
        return replyValuationMapper.deleteReply(replyValuation);
    }

    @PostMapping("/updateReply")
    int updateReply(@RequestBody ReplyValuation replyValuation){
        return replyValuationMapper.updateReply(replyValuation);
    }

    @PostMapping("/findReply")
    List<ReplyValuation> findReply(@RequestBody ReplyValuation replyValuation){
        return replyValuationMapper.findReply();
    }

    @GetMapping("/findAllReply")
    List<ReplyValuation> findAllReply(){
        return replyValuationMapper.findAllReply();
    }
}
