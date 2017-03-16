package com.company.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Samantha on 3/16/2017.
 */
@Controller
public class FormController {

    @RequestMapping("addActivity")

    public ModelAndView addActivity() {

        return new
                ModelAndView("addActivity", "message", "");
    }

    @RequestMapping("processForm")

    public ModelAndView getForm(@RequestParam("name") String name,
                                @RequestParam("address") String address,
                                @RequestParam("website") String website,
                                @RequestParam("stationId") int stationId) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        FoodEntity newFood = new FoodEntity ();

//set all values for the new customer

        newFood.setName(name);
        newFood.setAddress(address);
        newFood.setWebsite(website);
        newFood.setStationId(stationId);

        session.save(newFood);

        tx.commit();

        session.close();


        return new
                ModelAndView("confirmpage", "message", "Thank you for submitting");
    }



    @RequestMapping("processForm1")

    public ModelAndView getForm1(@RequestParam("name") String name,
                                 @RequestParam("address") String address,
                                 @RequestParam("website") String website,
                                 @RequestParam("stationId") int stationId) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        RetailEntity newRetail = new RetailEntity ();

//set all values for the new customer
        newRetail.setName(name);
        newRetail.setAddress(address);
        newRetail.setWebsite(website);
        newRetail.setStationId(stationId);


        session.save(newRetail);

        tx.commit();

        session.close();

        return new
                ModelAndView("confirmpage", "message", "Thank you for submitting");
    }

    @RequestMapping("processForm2")

    public ModelAndView getForm2(@RequestParam("name") String name,
                                 @RequestParam("address") String address,
                                 @RequestParam("website") String website,
                                 @RequestParam("stationId") int stationId) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        EntertainmentEntity newEntertainment = new EntertainmentEntity ();

//set all values for the new customer
        newEntertainment.setName(name);
        newEntertainment.setAddress(address);
        newEntertainment.setWebsite(website);
        newEntertainment.setStationId(stationId);

        session.save(newEntertainment);

        tx.commit();

        session.close();


        return new
                ModelAndView("confirmpage", "message", "Thank you for submitting");
    }
    @RequestMapping("processFormUser")

    public ModelAndView getForm3(@RequestParam("userLogin") String userLogin,
                                 @RequestParam("firstName") String firstName,
                                 @RequestParam("lastName") String lastName,
                                 @RequestParam("phoneNumber") String phoneNumber,
                                 @RequestParam("password")  String password) {

        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        UserinfoEntity newUser = new UserinfoEntity ();

//set all values for the new user

        newUser.setUserLogin(userLogin);
        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setPhoneNumber(phoneNumber);
        newUser.setPassword(password);



        session.save(newUser);

        tx.commit();

        session.close();


        return new
                ModelAndView("newUser", "message", "Thank you for registering");
    }
}
