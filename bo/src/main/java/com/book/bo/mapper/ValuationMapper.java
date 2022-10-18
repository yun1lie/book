package com.book.bo.mapper;

import com.book.bo.entity.Valuation;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ValuationMapper {
    @Insert("INSERT INTO `book`.`tb_valuation`" +
            "(`username`, `bookname`, `appraisesubject`, `appraisecontent`, `appraisetime`, `bookconcern`) " +
            "VALUES (#{userName}, #{bookName}, #{appraiseSubject}, #{appraiseContent}, #{appraiseTime}, #{bookConcern})")
    int insertValuation(Valuation valuation);

    @Delete("DELETE FROM `book`.`tb_valuation` WHERE `valuationid` = #{valuationId}")
    int deleteValuation(Valuation valuation);

    @Update("UPDATE `book`.`tb_valuation` " +
            "SET `username` = #{userName}, `bookname` = #{bookName}, `appraisesubject` = #{appraiseSubject}, `appraisecontent` = #{appraiseContent}," +
            " `appraisetime` = #{appraiseTime}, `bookconcern` = #{bookConcern} WHERE `valuationid` = #{valuationId}")
    int updateValuation(Valuation valuation);

    @Select("SELECT * FROM `book`.`tb_valuation`")
    List<Valuation> findAllValuation();

    @Select("SELECT * FROM `book`.`tb_valuation` WHERE `valuationid` = #{valuationId}")
    List<Valuation> findValuation(Valuation valuation);
}
