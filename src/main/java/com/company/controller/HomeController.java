package com.company.controller;


import com.company.entity.EntertainmentEntity;
import com.company.entity.FoodEntity;
import com.company.entity.RetailEntity;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
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
        out = out.concat("<div> Welcome " +fbProfileData.get("name"));
        out = out.concat("<div> Your Email: " + fbProfileData.get("email"));
        return new
                ModelAndView("welcome2", "message", "");

    }

    @RequestMapping("plan")

    public ModelAndView helloWorld2() {

        return new
                ModelAndView("plantrip", "cList", "hello world");

    }

    @RequestMapping("direction")

    public ModelAndView getDirection() {

        return new
                ModelAndView("direction", "cList", getQuery());

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



    public ArrayList<PlacesCount> getEntertainment(int y) throws ClassNotFoundException, SQLException {

        String query = "";
        if(y==1) {
            query = "SELECT food.stationID, stations.stattionName, sum(1) as Quantity\n" +
                    "FROM food INNER JOIN stations where food.stationID = stations.stationID\n" +
                    "group by food.stationID\n" +
                    "order by Quantity desc, food.stationID asc";
        }
        if(y==2){
            query = "SELECT entertainment.stationID, stations.stattionName, sum(1) as Quantity\n"+
            "FROM entertainment INNER JOIN stations where entertainment.stationID = stations.stationID\n" +
            "group by entertainment.stationID\n" +
            "order by Quantity desc, entertainment.stationID asc";
        }
        if(y==3){
            query = "SELECT retail.stationID, stations.stattionName, sum(1) as Quantity\n"+
            "FROM retail INNER JOIN stations where retail.stationID = stations.stationID\n"+
            "group by retail.stationID\n"+
            "order by Quantity desc, retail.stationID asc";
        }


        String url= "jdbc:mysql://q-line.cfffyru1vsmy.us-east-2.rds.amazonaws.com/qline";
        String userName = "root";
        String passWord = "group5qline";



        // this is step 2.  Load and register driver
        Class.forName("com.mysql.jdbc.Driver");

        //3 Create connection
        Connection con = DriverManager.getConnection(url,userName,passWord);

        //4 Create Statement
        Statement st = con.createStatement();

        //5
        ResultSet rs = st.executeQuery(query);
        ArrayList<PlacesCount> list = new ArrayList<PlacesCount>();

        //6  process results
        while(rs.next()) {
            int stationID = rs.getInt("stationID");//name of column is code
            String stattionname = rs.getString("stattionname");
            int quantity = rs.getInt("Quantity");
            PlacesCount temp = new PlacesCount(stationID, stattionname, quantity);

            list.add(temp);

        }
        //7 Close Connection
        st.close();
        con.close();


        return list;

    }

    @RequestMapping("getFromCategory")

    public ModelAndView returnEnt(@RequestParam("activity") int x) throws SQLException, ClassNotFoundException {
        ArrayList<PlacesCount> getList = getEntertainment(x);

        return new ModelAndView("entertainmentNear", "nearby", getList);
    }



}
