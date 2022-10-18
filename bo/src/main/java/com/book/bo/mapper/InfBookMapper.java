package com.book.bo.mapper;

import com.book.bo.entity.InfBook;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface InfBookMapper {
    //添加书籍信息
    @Insert("INSERT INTO `book`.`tb_infbook`" +
            "(`booknum`, `bookname`, `author`, `bookconcern`, `publishtime`, `bookprice`, `infbook`, `infauthor`, `bookimage`)" +
            " VALUES (#{bookNum}, #{bookName}, #{author}, #{bookConcern}, #{publishTime}, #{bookPrice}, #{infBook}, #{infAuthor}, #{bookImage})")
    int insertBook(InfBook infBook);

    //删除书籍
    @Delete("DELETE FROM `book`.`tb_infbook` WHERE `bookid` = #{bookId}")
    int deleteBook(InfBook infBook);

    //修改书籍信息
    @Update("UPDATE `book`.`tb_infbook` " +
            "SET `booknum` = #{bookNum}, `bookname` = #{bookName}, `author` = #{author}, `bookconcern` = #{bookConcern}, `publishtime` = #{publishTime}," +
            " `bookprice` = #{bookPrice}, " +
            "`infbook` =#{infBook},  `infauthor` = #{infAuthor}, `bookimage` = {bookImage}  WHERE `bookid` = #{bookId} ")
    int updateBook(InfBook infBook);

    //查询所有书籍
    @Select("SELECT * FROM `book`.`tb_infbook`")
    List<InfBook> findAllBook();

    //查询一本书
    @Select("SELECT * FROM `book`.`tb_infbook` WHERE `bookid` = #{bookId} ")
    List<InfBook> findBook(InfBook infBook);
}
