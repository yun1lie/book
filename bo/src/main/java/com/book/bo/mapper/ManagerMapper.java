package com.book.bo.mapper;

import com.book.bo.entity.Manager;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ManagerMapper {

    @Insert("INSERT INTO `book`.`tb_manager`(`mng_name`, `mng_pwd`) VALUES ( #{mngName}, #{mngPwd})")
    int insertManager(Manager manager);

    @Delete("DELETE FROM `book`.`tb_manager` WHERE `managerid` = #{managerId}")
    int deleteManager(Manager manager);

    @Update("UPDATE `book`.`tb_manager` SET `mng_name` = #{mngName}, `mng_pwd` = #{mngPwd} WHERE `managerid` = #{managerId}")
    int updateManager(Manager manager);

    @Select("SELECT * FROM `book`.`tb_manager`")
    List<Manager> findAllManager();

    @Select("SELECT * FROM `book`.`tb_manager`  WHERE `managerid` = #{managerId}")
    List<Manager> findManager(Manager manager);

}
