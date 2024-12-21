package vn.edu.hcmuaf.fit.demo6.dao;

import vn.edu.hcmuaf.fit.demo6.dao.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDao {
    static Map<String, User> data = new HashMap<>();
    static {
        data.put("ti", new User("ti", "123", "ti"));
        data.put("teo", new User("teo", "123", "teo"));
        data.put("user", new User("user", "123", "user"));
    }
    public User findUserName(String username) {return data.get(username);}
}
