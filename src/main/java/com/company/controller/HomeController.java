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
import java.util.Map;

@Controller
public class HomeController {
    @RequestMapping("/")

    public ModelAndView helloWorld()
    {
        FBConnection fbConnection = new FBConnection();
        return new
                ModelAndView("mainpage","message",fbConnection.getFBAuthUrl());

    }

    @RequestMapping("welcome2")

    public ModelAndView helloWorld2(@RequestParam("code") String code)
    {
        if (code == null || code.equals("")){
            throw new RuntimeException("ERROR: Didn't get code parameter in callback.");
        }
        FBConnection fbConnection = new FBConnection();
        String accessToken = fbConnection.getAccessToken(code);

        FBGraph fbGraph = new FBGraph(accessToken);
        String graph = fbGraph.getFBGraph();
        Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
        String out = "";

        return new
                ModelAndView("welcome2","message","");

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
