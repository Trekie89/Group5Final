package com.company.controller;

import com.company.entity.EntertainmentEntity;
import com.company.entity.FoodEntity;
import com.company.entity.LodgingEntity;
import com.company.entity.RetailEntity;
import com.company.models.PlacesCount;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
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
                ModelAndView("mainpage", "message", "");
    }

    @RequestMapping("privacy")
    public ModelAndView getPrivacy() {
        return new
                ModelAndView("privacypage", "message", "");
    }
    //    Mapping for plan trip page
    @RequestMapping("plan")
    public ModelAndView planTrip() {

        return new
                ModelAndView("plantrip", "cList", "hello world");
    }


    @RequestMapping("closestStation")
    public ModelAndView closestStation() {

        return new
                ModelAndView("closestStation", "message", "");
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

    //    Mapping for new User
    @RequestMapping("register")
    public ModelAndView getInfo() {

        return new
                ModelAndView("newUser", "message", "");
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

    //   Method to get all lodging according to station
    public ArrayList<LodgingEntity> getAllLodging(int stationID) {

        Session selectSession = getSession();

        Criteria c = selectSession.createCriteria(LodgingEntity.class);

        c.add(Restrictions.like("stationId", stationID));

        ArrayList<LodgingEntity> lodginglist = (ArrayList<LodgingEntity>) c.list();

        return lodginglist;
    }

    //    Mapping for listing all venues around station
    @RequestMapping("getStation")
    public ModelAndView nearStation(@RequestParam("stationId") int stationID, Model model1) {

        String statImage = "";
        if(stationID==1){
            statImage = "header1";
        }
        if(stationID==2){
            statImage = "header2";
        }
        if(stationID==3){
            statImage = "header3";
        }
        if(stationID==4){
            statImage = "header4";
        }
        if(stationID==5){
            statImage = "header5";
        }
        if(stationID==6){
            statImage = "header6";
        }
        if(stationID==7){
            statImage = "header7";
        }
        if(stationID==8){
            statImage = "header8";
        }
        if(stationID==9){
            statImage = "header9";
        }
        if(stationID==10){
            statImage = "header10";
        }
        if(stationID==11){
            statImage = "header11";
        }
        if(stationID==12){
            statImage = "header12";
        }

        List<FoodEntity> foodList = getAllFood(stationID);
        if (!foodList.isEmpty()) {
            getAllFood(stationID);
        }
        List<EntertainmentEntity> entertainmentList = getAllEntertainment(stationID);
        if (!entertainmentList.isEmpty()) {
            getAllEntertainment(stationID);
        }
        List<RetailEntity> retailList = getAllRetail(stationID);
        if (!retailList.isEmpty()) {
            getAllRetail(stationID);
        }
        List<LodgingEntity> lodgingList = getAllLodging(stationID);
        if (!lodgingList.isEmpty()) {
            getAllLodging(stationID);
        }

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("food", foodList);
        model.put("entertainment", entertainmentList);
        model.put("retail", retailList);
        model.put("lodging", lodgingList);
        model1.addAttribute("station", statImage);

       // return new ModelAndView("displayChoice", "model", model);
        if (model.size() == 0) {
            return new ModelAndView("displayChoice", "model", model);
        }

        else {
            return new ModelAndView("displayChoice", "model", model);
        }

    }


    //    Function for Option 2 popular venue around station
    public ArrayList<PlacesCount> getActivity(int y) throws ClassNotFoundException, SQLException {
        //selecting the appropriate query based on what the user chose in option 3 and
        // returns an arrayList.
        String query = "";
        if (y == 1) {
            query = "SELECT food.stationID, stations.stattionName, sum(1) as Quantity\n" +
                    "FROM food INNER JOIN stations where food.stationID = stations.stationID\n" +
                    "group by food.stationID\n" +
                    "order by Quantity desc, food.stationID asc";
        }
        if (y == 2) {
            query = "SELECT entertainment.stationID, stations.stattionName, sum(1) as Quantity\n" +
                    "FROM entertainment INNER JOIN stations where entertainment.stationID = stations.stationID\n" +
                    "group by entertainment.stationID\n" +
                    "order by Quantity desc, entertainment.stationID asc";
        }
        if (y == 3) {
            query = "SELECT retail.stationID, stations.stattionName, sum(1) as Quantity\n" +
                    "FROM retail INNER JOIN stations where retail.stationID = stations.stationID\n" +
                    "group by retail.stationID\n" +
                    "order by Quantity desc, retail.stationID asc";
        }
        if (y == 4) {
            query = "SELECT lodging.stationID, stations.stattionName, sum(1) as Quantity\n" +
                    "FROM lodging INNER JOIN stations where lodging.stationID = stations.stationID\n" +
                    "group by lodging.stationID\n" +
                    "order by Quantity desc, lodging.stationID asc";
        }

        String discount = "";
        String url = "jdbc:mysql://q-line.cfffyru1vsmy.us-east-2.rds.amazonaws.com/qline";
        String userName = keys.userName;
        String passWord = keys.passWord;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, userName, passWord);
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);

        ArrayList<PlacesCount> list = new ArrayList<PlacesCount>();

        while (rs.next()) {
            int stationID = rs.getInt("stationID");
            String stattionname = rs.getString("stattionname");
            int quantity = rs.getInt("Quantity");

            if (quantity <= 5 && y==1) {
                discount = "5% off";
            }
            else {
                discount = "no discount";
            }
            PlacesCount temp = new PlacesCount(stationID, stattionname, quantity, discount);
            list.add(temp);

        }
        st.close();
        con.close();
        return list;
    }

    //Mapping for option 2 returning list of what's around each station by one of four types.
    @RequestMapping("getFromCategory")
    public String returnEnt(@RequestParam("activity") int x, Model model) throws SQLException, ClassNotFoundException {
        ArrayList<PlacesCount> getList = getActivity(x);

        model.addAttribute("nearby", getList);
        if(x==1){
            model.addAttribute("nearby1", "Restaurants");
        }
        if(x==2){
            model.addAttribute("nearby1", "Entertainment venues");
        }
        if(x==3){
            model.addAttribute("nearby1", "Retail");
        }
        if(x==4){
            model.addAttribute("nearby1", "Lodging");
        }

        return "entertainmentNear";


    }

    //weather api
    @RequestMapping(value = "/", method = RequestMethod.GET)

    public String getWeather2(Model model) throws IOException {


        String key = keys.weatherKey;

        HttpClient http = HttpClientBuilder.create().build();

        HttpHost host2 = new HttpHost("api.wunderground.com", 80, "http");

        HttpGet getPage2 = new HttpGet("/api/" + key + "/conditions/q/MI/Detroit.json");


        HttpResponse resp2 = http.execute(host2, getPage2);


        String jsonString = EntityUtils.toString(resp2.getEntity());

        JSONObject json = new JSONObject(jsonString);

        int temp = 0;
        double wind = 0.0;
        String weather = "";
        String showWeather = "";

        weather = json.getJSONObject("current_observation").getString("weather");
        wind = json.getJSONObject("current_observation").getDouble("wind_mph");
        temp = json.getJSONObject("current_observation").getInt("temp_f");
        showWeather = json.getJSONObject("current_observation").getString("icon_url");


        model.addAttribute("showTemp", temp);
        model.addAttribute("showWind", wind);
        model.addAttribute("currentWeather", weather);
        model.addAttribute("Gif", showWeather);

        return "mainpage";


    }


}
