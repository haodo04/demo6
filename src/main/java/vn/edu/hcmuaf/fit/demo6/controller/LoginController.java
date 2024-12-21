package vn.edu.hcmuaf.fit.demo6.controller;
import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.demo6.services.AuthService;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String uname = req.getParameter("uname");
        String pass = req.getParameter("pass");
        AuthService service = new AuthService();
        if(service.checkLogin(uname, pass)) {
            resp.sendRedirect("index.jsp");
        }else {
            req.setAttribute("error", "Đăng nhập không thành công");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}

