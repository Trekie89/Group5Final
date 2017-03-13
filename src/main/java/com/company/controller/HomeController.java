package com.company.controller;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld()
    {
        return new
                ModelAndView("mainpage","message","Hello World");

    }


    @RequestMapping("plan")

    public ModelAndView helloWorld2()
    {

        return new
                ModelAndView("plantrip","cList","hello world");

    }
    @RequestMapping("about")

    public ModelAndView helloWorld3()
    {

        return new
                ModelAndView("about","cList","hello world");

    }
    @RequestMapping("safety")

    public ModelAndView helloWorld4()
    {

        return new
                ModelAndView("safety","cList","hello world");

    }


}
