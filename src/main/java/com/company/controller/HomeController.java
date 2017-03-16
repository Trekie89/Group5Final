package com.company.controller;

import com.company.entity.EntertainmentEntity;
import com.company.entity.FoodEntity;
import com.company.entity.RetailEntity;
import com.company.models.PlacesCount;
import org.hibernate.Criteria;
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

//    Landing Page
    @RequestMapping("/")
    public ModelAndView getMainPage() {
        FBConnection fbConnection = new FBConnection();

        return new
                ModelAndView("mainpage", "message", fbConnection.getFBAuthUrl());
    }

//    @RequestMapping("welcome2")
//    Facebook Login method
    public ModelAndView fbLogin(@RequestParam("code") String code) {
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

//    Mapping for plan trip page
    @RequestMapping("plan")
    public ModelAndView  planTrip() {

        return new
                ModelAndView("plantrip", "cList", "hello world");
    }

//    Mapping for direction
    @RequestMapping("direction")
    public ModelAndView getDirection() {

        return new
                ModelAndView("direction", "message", "");
    }

//     Mapping for about page
    @RequestMapping("about")
    public ModelAndView helloWorld3() {

        return new
                ModelAndView("about", "cList", "hello world");
    }

//    Mapping for safety page
    @RequestMapping("safety")
    public ModelAndView helloWorld4() {

        return new
                ModelAndView("safety", "cList", "");
    }

//    Method for generic sessions
    public Session getSession() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectSession = sessionFactory.openSession();

        selectSession.beginTransaction();
        return selectSession;
    }

//    Method to get all entertainment according to station
    public ArrayList<EntertainmentEntity> getAllEntertainment(int stationID) {

        Session selectSession = getSession();

        Criteria c = selectSession.createCriteria(EntertainmentEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<EntertainmentEntity> entertainmentList = (ArrayList<EntertainmentEntity>) c.list();

        return entertainmentList;
    }

    //    Method to get all retail according to station
    public ArrayList<RetailEntity> getAllRetail(int stationID) {

        Session selectSession = getSession();

        Criteria c = selectSession.createCriteria(RetailEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<RetailEntity> retailList = (ArrayList<RetailEntity>) c.list();

        return retailList;
    }

//    Method to get all food according to station
    public ArrayList<FoodEntity> getAllFood(int stationID) {

        Session selectSession = getSession();

        Criteria c = selectSession.createCriteria(FoodEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<FoodEntity> foodlist = (ArrayList<FoodEntity>) c.list();

        return foodlist;
    }

//    Mapping for listing all venues around station
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

//    method that returns count -- no longer in use
    /*public Long getQuery() {
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
    }*/

//    Function for Option 2 popular venue around station
    public ArrayList<PlacesCount> getActivity(int y) throws ClassNotFoundException, SQLException {
        //selecting the appropriate query based on what the user chose in option 3 and
        // returns an arrayList.
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
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,userName,passWord);
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);

        ArrayList<PlacesCount> list = new ArrayList<PlacesCount>();

        while(rs.next()) {
            int stationID = rs.getInt("stationID");
            String stattionname = rs.getString("stattionname");
            int quantity = rs.getInt("Quantity");
            PlacesCount temp = new PlacesCount(stationID, stattionname, quantity);
            list.add(temp);
        }
        st.close();
        con.close();
        return list;
    }

//    Mapping for option 2 popular venue
    @RequestMapping("getFromCategory")
    public ModelAndView returnEnt(@RequestParam("activity") int x) throws SQLException, ClassNotFoundException {
        ArrayList<PlacesCount> getList = getActivity(x);

        return new ModelAndView("entertainmentNear", "nearby", getList);
    }



}
