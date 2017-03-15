package com.company.controller;

import org.hibernate.Criteria;
import org.hibernate.Query;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {
    @RequestMapping("/")

    public ModelAndView helloWorld() {
        FBConnection fbConnection = new FBConnection();
        return new
                ModelAndView("mainpage", "message", fbConnection.getFBAuthUrl());

    }

    @RequestMapping("welcome2")

    public ModelAndView helloWorld2(@RequestParam("code") String code) {
        if (code == null || code.equals("")) {
            throw new RuntimeException("ERROR: Didn't get code parameter in callback.");
        }
        FBConnection fbConnection = new FBConnection();
        String accessToken = fbConnection.getAccessToken(code);

        FBGraph fbGraph = new FBGraph(accessToken);
        String graph = fbGraph.getFBGraph();
        Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
        String out = "";

        return new
                ModelAndView("welcome2", "message", "");

    }

    @RequestMapping("plan")

    public ModelAndView helloWorld2() {

        return new
                ModelAndView("plantrip", "cList", "hello world");

    }

    @RequestMapping("about")

    public ModelAndView helloWorld3() {

        return new
                ModelAndView("about", "cList", "hello world");

    }

    @RequestMapping("safety")

    public ModelAndView helloWorld4() {

        return new
                ModelAndView("safety", "cList", getQuery());

    }

    public ArrayList<EntertainmentEntity> getAllEntertainment(int stationID) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectEntertainment = sessionFactory.openSession();

        selectEntertainment.beginTransaction();

        Criteria c = selectEntertainment.createCriteria(EntertainmentEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<EntertainmentEntity> entertainmentList = (ArrayList<EntertainmentEntity>) c.list();

        return entertainmentList;
    }

    public ArrayList<RetailEntity> getAllRetail(int stationID) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectRetail = sessionFactory.openSession();

        selectRetail.beginTransaction();

        Criteria c = selectRetail.createCriteria(RetailEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<RetailEntity> retailList = (ArrayList<RetailEntity>) c.list();

        return retailList;
    }

    public ArrayList<FoodEntity> getAllFood(int stationID) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectFood = sessionFactory.openSession();

        selectFood.beginTransaction();

        Criteria c = selectFood.createCriteria(FoodEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<FoodEntity> foodlist = (ArrayList<FoodEntity>) c.list();

        return foodlist;
    }

    @RequestMapping("getStation")

    public ModelAndView nearStation(@RequestParam("stationId") int stationID) {

        List<FoodEntity> foodList = getAllFood(stationID);
        List<EntertainmentEntity> entertainmentList = getAllEntertainment(stationID);
        List<RetailEntity> retailList = getAllRetail(stationID);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("food", foodList);
        model.put("entertainment", entertainmentList);
        model.put("retail", retailList);

        return new ModelAndView("displayChoice", "model", model);

    }

    public Long getQuery() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectFood = sessionFactory.openSession();

        selectFood.beginTransaction();

        //Criteria c = selectEntertainment.createCriteria(EntertainmentEntity.class);

       // c.add(Restrictions.like("stationId", stationID));


        Query query = selectFood.createQuery(
                "select count(stationId) from FoodEntity  where stationId=1");
        Long count = (Long)query.uniqueResult();
        return count;
    }
}
