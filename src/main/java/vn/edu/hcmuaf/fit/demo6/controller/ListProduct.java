package vn.edu.hcmuaf.fit.demo6.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo6.dao.model.Product;
import vn.edu.hcmuaf.fit.demo6.services.ProductService;
import java.util.*;

import java.io.IOException;

@WebServlet(name = "ListProduct", value = "/list-product")
public class ListProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductService service = new ProductService();
        List<Product> all = service.getAll();
        // sau khi lấy sp, them no vào request
        req.setAttribute("data", all);
        // đã gửi dữ liệu qua trang jsp
        req.getRequestDispatcher("list-product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
