package com.company.controller;

import com.company.entity.FbuserinfoEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

@Controller
public class LoginController {

    //    Mapping for login
    @RequestMapping("login")
    public ModelAndView login() {

        FBConnection fbConnection = new FBConnection();

        return new
                ModelAndView("loginPage", "message", fbConnection.getFBAuthUrl());
    }

    //log in authentication getting the user info from facebook to put into our database
    @RequestMapping("welcome2")
    public ModelAndView fbLogin(@RequestParam("code") String code,
                                HttpServletResponse response, Model model) {
        if (code == null || code.equals("")) {
            throw new RuntimeException("ERROR: Didn't get code parameter in callback.");
        }
        FBConnection fbConnection = new FBConnection();
        String accessToken = fbConnection.getAccessToken(code);

        FBGraph fbGraph = new FBGraph(accessToken);
        String graph = fbGraph.getFBGraph();
        Map<String, String> fbProfileData = fbGraph.getGraphData(graph);

        String id = fbProfileData.get("id").toString();

        //making a cookie
        Cookie userCookie = new Cookie("userTag", id);
        userCookie.setMaxAge(-1);
        response.addCookie(userCookie);

        //making sure that the user doesn't get put in our database
        if (fbChck(id) == false) {

            Session selectSession = getSession();
            Transaction tx = selectSession.beginTransaction();

            FbuserinfoEntity fbUser = new FbuserinfoEntity();

            fbUser.setFbId(fbProfileData.get("id").toString());
            fbUser.setFirstName(fbProfileData.get("first_name").toString());
            fbUser.setLastName(fbProfileData.get("last_name").toString());
            fbUser.setEmail(fbProfileData.get("email").toString());

            selectSession.save(fbUser);
            tx.commit();
            selectSession.close();


            return new
                    ModelAndView("confirmpage", "message", "Thank you for logging in");
        } else {
            return new
                    ModelAndView("mainpage2", "message", fbConnection.getFBAuthUrl());
        }
    }

    //checks to see if user is already in database
    private boolean fbChck(String id) {
        String query;
        boolean login = false;

        try {

            String url= "jdbc:mysql://q-line.cfffyru1vsmy.us-east-2.rds.amazonaws.com/qline";
            String userName = "root";
            String passWord = "group5qline";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,userName,passWord);

            query = "SELECT count(*) FROM fbuserinfo WHERE fbId = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.executeQuery();
            ResultSet rs = ps.executeQuery();

            rs.next();
            int checkUser = rs.getInt(1);

            if (checkUser == 1) {
                login = true;
            } else {
                login = false;
            }

            con.close();
        }

        catch(Exception err){
            System.out.println("ERROR: " + err.getCause());
        }

        return login;

    }

    //this makes sure they have the correct username and password
    @RequestMapping("validate")
    public ModelAndView validateUserPass(@RequestParam ("userLogin") String userLogin,
                                         @RequestParam("password") String pass) {

        String confirm;

        Boolean result = logChck(userLogin, pass);

        if ( result == true) {

            confirm = "Login Successful";
        }
        else {
            confirm = "Not a valid entry please try again.";
        }

        return new
                ModelAndView("confirmpage", "message", confirm);

    }

    //makes sure that user is not already in database
    private boolean logChck(String username, String password) {
        String query;
        boolean login = false;

        try {

            String url= "jdbc:mysql://q-line.cfffyru1vsmy.us-east-2.rds.amazonaws.com/qline";
            String userName = "root";
            String passWord = "group5qline";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,userName,passWord);

            query = "SELECT count(*) FROM userinfo WHERE userLogin = ? && password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeQuery();
            ResultSet rs = ps.executeQuery();

            rs.next();
            int checkUser = rs.getInt(1);


            if(checkUser==1) {
                login = true;
            }
            else {
                login = false;
            }
            con.close();
        }

        catch (Exception err) {
            System.out.println("ERROR: " + err.toString());
        }
        return login;
    }


    //    Method for generic sessions
    public Session getSession() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = cfg.buildSessionFactory();

        Session selectSession = sessionFactory.openSession();

        selectSession.beginTransaction();
        return selectSession;
    }
}
