package com.book.bo.controller;

import com.book.bo.entity.InfBook;
import com.book.bo.mapper.CustomerMapper;
import com.book.bo.mapper.InfBookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BookController {
    @Autowired
    private InfBookMapper infBookMapper;

    //添加书籍
    @PostMapping("/addBook")
    int addBook(@RequestBody InfBook infBook){
        return infBookMapper.insertBook(infBook);
    }

    @PostMapping("/deleteBook")
    int deleteBook(@RequestBody InfBook infBook){
        return infBookMapper.deleteBook(infBook);
    }

    @PostMapping("/updateBook")
    int updateBook(@RequestBody InfBook infBook){
        return infBookMapper.updateBook(infBook);
    }

    @PostMapping("/findBook")
    List<InfBook> findBook(@RequestBody InfBook infBook){
        return infBookMapper.findBook(infBook);
    }

    @PostMapping("/findAllBook")
    List<InfBook> findAllBook(){
        return infBookMapper.findAllBook();
    }

}
