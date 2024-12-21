package vn.edu.hcmuaf.fit.demo6.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.demo6.dao.model.Product;
import vn.edu.hcmuaf.fit.demo6.services.ProductService;

import java.io.IOException;

@WebServlet(name="Detail", value="/detail")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("pid");
        ProductService service = new ProductService();
        Product detail = service.getDetail(id);
        req.setAttribute("p", detail);

        req.getRequestDispatcher("product-detail.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
