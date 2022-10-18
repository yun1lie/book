package com.book.bo.mapper;

import com.book.bo.entity.ReplyValuation;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ReplyValuationMapper {
    @Insert("INSERT INTO `book`.`tb_replyvaluation`(`valuationid`, `username`, `replycontent`, `replytime`) " +
            "VALUES (#{valuationId}, #{username}, #{replyContent}, #{replyTime})")
    int insertReply(ReplyValuation replyValuation);

    @Delete("DELETE FROM `book`.`tb_replyvaluation` WHERE `rvid` = #{rvId}")
    int deleteReply(ReplyValuation replyValuation);

    @Update("UPDATE `book`.`tb_replyvaluation` " +
            "SET `valuationid` = #{valuationId}, `username` =  #{username}, `replycontent` =  #{replyContent}, `replytime` =  #{replyTime}" +
            " WHERE `rvid` =  #{rvId}")
    int updateReply(ReplyValuation replyValuation);

    @Select("SELECT * FROM `book`.`tb_replyvaluation`")
    List<ReplyValuation> findAllReply();

    @Select("SELECT * FROM `book`.`tb_replyvaluation` WHERE `rvid` =  #{rvId}")
    List<ReplyValuation> findReply();
}
