package com.company.controller;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    public ArrayList<FoodEntity> getAllFood() {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectFood = sessionFactory.openSession();

        selectFood.beginTransaction();

        Criteria c = selectFood.createCriteria(FoodEntity.class);

        //c.add(Restrictions.like("stationId",stationID));

        ArrayList<FoodEntity> foodlist = (ArrayList<FoodEntity>)c.list();

        return foodlist;
    }

    public ArrayList<EntertainmentEntity> getAllEntertainment() {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectEntertainment = sessionFactory.openSession();

        selectEntertainment.beginTransaction();

        Criteria c = selectEntertainment.createCriteria(EntertainmentEntity.class);

//        c.add(Restrictions.like("stationId","5"));

        ArrayList<EntertainmentEntity> entertainmentList = (ArrayList<EntertainmentEntity>)c.list();

        return entertainmentList;
    }

    public ArrayList<RetailEntity> getAllRetail() {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectRetail = sessionFactory.openSession();

        selectRetail.beginTransaction();

        Criteria c = selectRetail.createCriteria(RetailEntity.class);

//        c.add(Restrictions.like("stationId","x"));

        ArrayList<RetailEntity> retailList = (ArrayList<RetailEntity>)c.list();

        return retailList;
    }

    public ArrayList<EntertainmentEntity> getAllEntertainment(int x) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectEntertainment = sessionFactory.openSession();

        selectEntertainment.beginTransaction();

        Criteria c = selectEntertainment.createCriteria(EntertainmentEntity.class);

        c.add(Restrictions.like("stationId","x"));

        ArrayList<EntertainmentEntity> entertainmentList = (ArrayList<EntertainmentEntity>)c.list();

        return entertainmentList;
    }

    public ArrayList<RetailEntity> getAllRetail(int x) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectRetail = sessionFactory.openSession();

        selectRetail.beginTransaction();

        Criteria c = selectRetail.createCriteria(RetailEntity.class);

        c.add(Restrictions.like("stationId","x"));

        ArrayList<RetailEntity> retailList = (ArrayList<RetailEntity>)c.list();

        return retailList;
    }

    public ArrayList<FoodEntity> getAllFood(int x) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectFood = sessionFactory.openSession();

        selectFood.beginTransaction();

        Criteria c = selectFood.createCriteria(FoodEntity.class);

        c.add(Restrictions.like("stationId","x"));

        ArrayList<FoodEntity> foodlist = (ArrayList<FoodEntity>)c.list();

        return foodlist;
    }



    @RequestMapping("getStation")

    public ModelAndView nearStation(@RequestParam("station") int id, Model model)
    {



        ArrayList<RetailEntity> rlist = getAllRetail(id);
        ArrayList<EntertainmentEntity> elist = getAllEntertainment(id);
        ArrayList<FoodEntity> flist = getAllFood(id);

        //ArrayList<FoodEntertainmentRetail> getNear = getNear.addAll(rlist);
        //ArrayList<FoodEntertainmentRetail> getNear = getNear.addAll(elist);
        //ArrayList<FoodEntertainmentRetail> getNear = getNear.addAll(flist);


        return new ModelAndView("displayChoice", "stationRetail", getNear);




    }

}
