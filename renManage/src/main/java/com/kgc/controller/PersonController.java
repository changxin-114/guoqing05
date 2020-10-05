package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class PersonController {
    @Resource
    PersonService personService;

    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<Person> people = personService.selectAll();
        model.addAttribute("people",people);
        return "index";
    }

    @RequestMapping("/add")
    public String add(Person person){
        personService.add(person);
        return "redirect:selectAll";
    }

    @RequestMapping("/del")
    public String del(int id){
        personService.del(id);
        return "redirect:selectAll";
    }


}
