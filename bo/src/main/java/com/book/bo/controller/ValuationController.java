package com.book.bo.controller;

import com.book.bo.entity.Valuation;
import com.book.bo.mapper.ValuationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ValuationController {
    @Autowired
    private ValuationMapper valuationMapper;

    @PostMapping("/insertValuation")
    int insertValuation(@RequestBody Valuation valuation){
        return valuationMapper.insertValuation(valuation);
    }

    @PostMapping("/deleteValuation")
    int deleteValuation(@RequestBody Valuation valuation){
        return valuationMapper.deleteValuation(valuation);
    }

    @PostMapping("/updateValuation")
    int updateValuation(@RequestBody Valuation valuation){
        return valuationMapper.updateValuation(valuation);
    }

    @PostMapping("/findValuation")
    List<Valuation> findValuation(@RequestBody  Valuation valuation){
        return valuationMapper.findValuation(valuation);
    }

    @GetMapping("/findAllValuation")
    List<Valuation> findAllValuation(){
        return valuationMapper.findAllValuation();
    }

}
