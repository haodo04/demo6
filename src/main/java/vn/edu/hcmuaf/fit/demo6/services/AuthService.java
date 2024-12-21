package vn.edu.hcmuaf.fit.demo6.services;

import vn.edu.hcmuaf.fit.demo6.dao.UserDao;
import vn.edu.hcmuaf.fit.demo6.dao.model.User;

public class AuthService {

    public boolean checkLogin(String uname, String pass) {
        UserDao uDao = new UserDao();
        User u = uDao.findUserName(uname);
        if(u==null) return false;
        return pass.equals(u.getPassword());
    }
}
