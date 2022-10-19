package com.book.bo.controller;


import com.book.bo.entity.Manager;
import com.book.bo.mapper.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ManagerController {
    @Autowired
    private ManagerMapper managerMapper;

    @PostMapping("/insertManager")
    int insertManager(@RequestBody Manager manager) {
        return managerMapper.insertManager(manager);
    }

    @PostMapping("/deleteManager")
    int deleteManager(@RequestBody Manager manager) {
        return managerMapper.deleteManager(manager);
    }

    @PostMapping("/updateManager")
    int updateManager(@RequestBody Manager manager) {
        return managerMapper.updateManager(manager);
    }

    @GetMapping("/findAllManager")
    List<Manager> findAllManager() {
        return managerMapper.findAllManager();
    }

    @PostMapping("/findManager")
    List<Manager> findManager(@RequestBody Manager manager) {
        return managerMapper.findManager(manager);
    }
}
